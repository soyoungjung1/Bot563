#! /usr/bin/env ruby
require 'getopts'
require 'tempfile'

mafftpath = "/usr/local/bin/mafft"
seed = 0
nout = 200
infn = ""
reorderoption = "--reorder"
coreoptions = " --globalpair --maxiterate 100 "
addoptions = " "
markcore = ""
if getopts( "m:" "s:", "p:", "i:", "c:", "a:", "o:", "M" ) == nil || $OPT_h then
	STDERR.puts "Usage: #{$0} -i inputfile [options]"
	STDERR.puts "Options:"
	STDERR.puts "   -i string     Input file."
	STDERR.puts "   -m string     Mafft command.  Default:mafft"
	STDERR.puts "   -s int        Seed.  Default:0"
	STDERR.puts "   -p int        Number of core sequences.  Default:200"
	STDERR.puts "   -c \"string\"   Mafft options for the CORE stage."
	STDERR.puts "                 Default: \"--globalpair --maxiterate 100\""
	STDERR.puts "   -a \"string\"   Mafft options for the ADD stage."
	puts "                 Default: \"\""
	STDERR.puts "   -o r or i     r: Reorder the sequences based on similarity.  Default"
	STDERR.puts "                 i: Same as input."
	exit 1
end

if $OPT_m then
	mafftpath = $OPT_m
end
if $OPT_s then
	seed = $OPT_s.to_i
end
if $OPT_p then
	nout = $OPT_p.to_i
end
if $OPT_i then
	infn = $OPT_i
end
if $OPT_c then
	coreoptions = $OPT_c
end
if $OPT_a then
	addoptions = $OPT_a
end
if $OPT_o then
	if $OPT_o.to_s.strip =~ /i/ then
		reorderoption = ""
	end
end
if $OPT_M then
	markcore = "*"
end

if infn == "" then
	STDERR.puts "Give input file with -i."
	exit 1
end


temp_uf = Tempfile.new("_uf").path
temp_nf = Tempfile.new("_nf").path
temp_cf = Tempfile.new("_cf").path
temp_of = Tempfile.new("_of").path

system "#{mafftpath} --version > #{temp_of} 2>&1"

fp = File.open( temp_of, "r" )
	line = fp.gets
fp.close


versionnum = line.split(' ')[0].sub(/v/,"").to_f

if versionnum < 7.200 then
	STDERR.puts "\n"
	STDERR.puts "Please use mafft version >= 7.200\n"
	STDERR.puts "\n"
	exit
end

srand( seed )

def readfasta( fp, name, seq )
        nseq = 0
        tmpseq = ""
        while fp.gets
                if $_ =~ /^>/ then
                        name.push( $_.sub(/>/,"").strip )
                        seq.push( tmpseq ) if nseq > 0
                        nseq += 1
                        tmpseq = ""
                else
                        tmpseq += $_.strip
                end
        end
        seq.push( tmpseq )
        return nseq
end


tname = []
tseq = []
infp = File.open( infn, "r" )
tin = readfasta( infp, tname, tseq )
infp.close
ref = tseq[tin-1]

sai = []
if nout < tin  then
	for i in 0..(nout-1)
		sai[i] = 1
	end
	for i in nout..(tin-1)
		sai[i] = 0
	end
	sai2 = sai.sort_by{rand}
	sai = sai2
else
	for i in 0..(tin-1)
		sai[i] = 1
	end
end

ufp = File.open( temp_uf, 'w' )
nfp = File.open( temp_nf, 'w' )

i = 0
while i < tin
	if sai[i] == 1 then
		ufp.puts ">" + i.to_s + " " + ">" + markcore + tname[i]
		ufp.puts tseq[i]
	else
		nfp.puts ">" + i.to_s + " " + ">" + tname[i]
		nfp.puts tseq[i]
	end
	i += 1
end

nfp.close
ufp.close


system( mafftpath + " #{coreoptions} #{temp_uf} > #{temp_cf}" )
if nout < tin 
	system( mafftpath + " #{addoptions} #{reorderoption} --add #{temp_nf} #{temp_cf} > #{temp_of}" )
else
	system( "cp #{temp_cf} #{temp_of}" )
end

resname = []
resseq = []
resfp = File.open( temp_of, "r" )
nres = readfasta( resfp, resname, resseq )
resfp.close

if reorderoption =~ /--reorder/ then
	for i in 0..(nres-1)
		puts ">" + resname[i].sub(/^[0-9]* >/,"")
		puts resseq[i]
	end
else
	seqhash = {}
	namehash = {}
	for i in 0..(nres-1)
		key = resname[i].split(' ')[0]
		seqhash[key] = resseq[i]
		namehash[key] = resname[i]
	end
	for i in 0..(nres-1)
		key = i.to_s
		puts ">" + namehash[key].sub(/^[0-9]* >/,"")
		puts seqhash[key]
	end
end

#system( "cat #{temp_of}" )

#STDERR.puts "Randomly selected #{nout} sequences were aligned with G-INS-i to generate a core MSA, and the remaining sequences were added to the core MSA."
system( "rm -rf #{temp_nf} #{temp_cf} #{temp_of} #{temp_uf}" )
