#ClustalW

Downloaded ClustalW file clustalw-2.1-macosx.dmg and copied the folder into Document/software

(base) soyoungjung@Soyoungs-MacBook-Pro Documents % cp Bot563/Bot563/clustalw-2.1-macosx/clustalw2 software

#I tried to 
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw-2.1-macosx/clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP 
zsh: bad CPU type in executable: clustalw-2.1-macosx/clustalw2
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda create -n clustalw2 -c biobuilds -y clustalw -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP

usage: conda [-h] [-V] command ...
conda: error: unrecognized arguments: -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda create -n clustalw2 -c biobuilds -y clustalw -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP
usage: conda [-h] [-V] command ...
conda: error: unrecognized arguments: -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda create -n clustalw2 -c biobuilds -y clustalw
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.8.3
  latest version: 4.10.1

Please update conda by running

    $ conda update -n base -c defaults conda



## Package Plan ##

  environment location: /Users/soyoungjung/opt/miniconda2/envs/clustalw2

  added / updated specs:
    - clustalw


The following NEW packages will be INSTALLED:

  clustalw           biobuilds/osx-64::clustalw-2.1-1


Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate clustalw2
#
# To deactivate an active environment, use
#
#     $ conda deactivate

(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw-2.1-macosx/clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP
zsh: bad CPU type in executable: clustalw-2.1-macosx/clustalw2
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP

activate does not accept more than one argument:
['clustalw2', '-ALIGN', '-INFILE=SupplementalDataSet3.fasta', '-OUTFILE=SupplementalDataSet3-aligned.fasta', '-OUTPUT=PHYLIP']

(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate clustalw2 -ALIGN
activate does not accept more than one argument:
['clustalw2', '-ALIGN']

#downloading T-Coffee
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % cd T-COFFEE_distribution_Version_13.45.0.4846264
(base) soyoungjung@Soyoungs-MacBook-Pro T-COFFEE_distribution_Version_13.45.0.4846264 % ./install all
-------------------------------COPYRIGHT NOTICE------------------------------/
  ACADEMIC LICENCE AGREEMENT

  ? Centro de Regulacio Genomica and Cedric Notredame  ( 15 Oct 2020 - 17:52). 
		    GNU GENERAL PUBLIC LICENSE
		       Version 2, June 1991

 Copyright (C) 1989, 1991 Free Software Foundation, Inc.
                       59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 Everyone is permitted to copy and distribute verbatim copies
 of this license document, but changing it is not allowed.

			    Preamble

  The licenses for most software are designed to take away your
freedom to share and change it.  By contrast, the GNU General Public
License is intended to guarantee your freedom to share and change free
software--to make sure the software is free for all its users.  This
General Public License applies to most of the Free Software
Foundation's software and to any other program whose authors commit to
using it.  (Some other Free Software Foundation software is covered by
the GNU Library General Public License instead.)  You can apply it to
your programs, too.

  When we speak of free software, we are referring to freedom, not
price.  Our General Public Licenses are designed to make sure that you
have the freedom to distribute copies of free software (and charge for
this service if you wish), that you receive source code or can get it
if you want it, that you can change the software or use pieces of it
in new free programs; and that you know you can do these things.

  To protect your rights, we need to make restrictions that forbid
anyone to deny you these rights or to ask you to surrender the rights.
These restrictions translate to certain responsibilities for you if you
distribute copies of the software, or if you modify it.

  For example, if you distribute copies of such a program, whether
gratis or for a fee, you must give the recipients all the rights that
you have.  You must make sure that they, too, receive or can get the
source code.  And you must show them these terms so they know their
rights.

  We protect your rights with two steps: (1) copyright the software, and
(2) offer you this license which gives you legal permission to copy,
distribute and/or modify the software.

  Also, for each author's protection and ours, we want to make certain
that everyone understands that there is no warranty for this free
software.  If the software is modified by someone else and passed on, we
want its recipients to know that what they have is not the original, so
that any problems introduced by others will not reflect on the original
authors' reputations.

  Finally, any free program is threatened constantly by software
patents.  We wish to avoid the danger that redistributors of a free
program will individually obtain patent licenses, in effect making the
program proprietary.  To prevent this, we have made it clear that any
patent must be licensed for everyone's free use or not licensed at all.

  The precise terms and conditions for copying, distribution and
modification follow.

		    GNU GENERAL PUBLIC LICENSE
   TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION

  0. This License applies to any program or other work which contains
a notice placed by the copyright holder saying it may be distributed
under the terms of this General Public License.  The "Program", below,
refers to any such program or work, and a "work based on the Program"
means either the Program or any derivative work under copyright law:
that is to say, a work containing the Program or a portion of it,
either verbatim or with modifications and/or translated into another
language.  (Hereinafter, translation is included without limitation in
the term "modification".)  Each licensee is addressed as "you".

Activities other than copying, distribution and modification are not
covered by this License; they are outside its scope.  The act of
running the Program is not restricted, and the output from the Program
is covered only if its contents constitute a work based on the
Program (independent of having been made by running the Program).
Whether that is true depends on what the Program does.

  1. You may copy and distribute verbatim copies of the Program's
source code as you receive it, in any medium, provided that you
conspicuously and appropriately publish on each copy an appropriate
copyright notice and disclaimer of warranty; keep intact all the
notices that refer to this License and to the absence of any warranty;
and give any other recipients of the Program a copy of this License
along with the Program.

You may charge a fee for the physical act of transferring a copy, and
you may at your option offer warranty protection in exchange for a fee.

  2. You may modify your copy or copies of the Program or any portion
of it, thus forming a work based on the Program, and copy and
distribute such modifications or work under the terms of Section 1
above, provided that you also meet all of these conditions:

    a) You must cause the modified files to carry prominent notices
    stating that you changed the files and the date of any change.

    b) You must cause any work that you distribute or publish, that in
    whole or in part contains or is derived from the Program or any
    part thereof, to be licensed as a whole at no charge to all third
    parties under the terms of this License.

    c) If the modified program normally reads commands interactively
    when run, you must cause it, when started running for such
    interactive use in the most ordinary way, to print or display an
    announcement including an appropriate copyright notice and a
    notice that there is no warranty (or else, saying that you provide
    a warranty) and that users may redistribute the program under
    these conditions, and telling the user how to view a copy of this
    License.  (Exception: if the Program itself is interactive but
    does not normally print such an announcement, your work based on
    the Program is not required to print an announcement.)

These requirements apply to the modified work as a whole.  If
identifiable sections of that work are not derived from the Program,
and can be reasonably considered independent and separate works in
themselves, then this License, and its terms, do not apply to those
sections when you distribute them as separate works.  But when you
distribute the same sections as part of a whole which is a work based
on the Program, the distribution of the whole must be on the terms of
this License, whose permissions for other licensees extend to the
entire whole, and thus to each and every part regardless of who wrote it.

Thus, it is not the intent of this section to claim rights or contest
your rights to work written entirely by you; rather, the intent is to
exercise the right to control the distribution of derivative or
collective works based on the Program.

In addition, mere aggregation of another work not based on the Program
with the Program (or with a work based on the Program) on a volume of
a storage or distribution medium does not bring the other work under
the scope of this License.

  3. You may copy and distribute the Program (or a work based on it,
under Section 2) in object code or executable form under the terms of
Sections 1 and 2 above provided that you also do one of the following:

    a) Accompany it with the complete corresponding machine-readable
    source code, which must be distributed under the terms of Sections
    1 and 2 above on a medium customarily used for software interchange; or,

    b) Accompany it with a written offer, valid for at least three
    years, to give any third party, for a charge no more than your
    cost of physically performing source distribution, a complete
    machine-readable copy of the corresponding source code, to be
    distributed under the terms of Sections 1 and 2 above on a medium
    customarily used for software interchange; or,

    c) Accompany it with the information you received as to the offer
    to distribute corresponding source code.  (This alternative is
    allowed only for noncommercial distribution and only if you
    received the program in object code or executable form with such
    an offer, in accord with Subsection b above.)

The source code for a work means the preferred form of the work for
making modifications to it.  For an executable work, complete source
code means all the source code for all modules it contains, plus any
associated interface definition files, plus the scripts used to
control compilation and installation of the executable.  However, as a
special exception, the source code distributed need not include
anything that is normally distributed (in either source or binary
form) with the major components (compiler, kernel, and so on) of the
operating system on which the executable runs, unless that component
itself accompanies the executable.

If distribution of executable or object code is made by offering
access to copy from a designated place, then offering equivalent
access to copy the source code from the same place counts as
distribution of the source code, even though third parties are not
compelled to copy the source along with the object code.

  4. You may not copy, modify, sublicense, or distribute the Program
except as expressly provided under this License.  Any attempt
otherwise to copy, modify, sublicense or distribute the Program is
void, and will automatically terminate your rights under this License.
However, parties who have received copies, or rights, from you under
this License will not have their licenses terminated so long as such
parties remain in full compliance.

  5. You are not required to accept this License, since you have not
signed it.  However, nothing else grants you permission to modify or
distribute the Program or its derivative works.  These actions are
prohibited by law if you do not accept this License.  Therefore, by
modifying or distributing the Program (or any work based on the
Program), you indicate your acceptance of this License to do so, and
all its terms and conditions for copying, distributing or modifying
the Program or works based on it.

  6. Each time you redistribute the Program (or any work based on the
Program), the recipient automatically receives a license from the
original licensor to copy, distribute or modify the Program subject to
these terms and conditions.  You may not impose any further
restrictions on the recipients' exercise of the rights granted herein.
You are not responsible for enforcing compliance by third parties to
this License.

  7. If, as a consequence of a court judgment or allegation of patent
infringement or for any other reason (not limited to patent issues),
conditions are imposed on you (whether by court order, agreement or
otherwise) that contradict the conditions of this License, they do not
excuse you from the conditions of this License.  If you cannot
distribute so as to satisfy simultaneously your obligations under this
License and any other pertinent obligations, then as a consequence you
may not distribute the Program at all.  For example, if a patent
license would not permit royalty-free redistribution of the Program by
all those who receive copies directly or indirectly through you, then
the only way you could satisfy both it and this License would be to
refrain entirely from distribution of the Program.

If any portion of this section is held invalid or unenforceable under
any particular circumstance, the balance of the section is intended to
apply and the section as a whole is intended to apply in other
circumstances.

It is not the purpose of this section to induce you to infringe any
patents or other property right claims or to contest validity of any
such claims; this section has the sole purpose of protecting the
integrity of the free software distribution system, which is
implemented by public license practices.  Many people have made
generous contributions to the wide range of software distributed
through that system in reliance on consistent application of that
system; it is up to the author/donor to decide if he or she is willing
to distribute software through any other system and a licensee cannot
impose that choice.

This section is intended to make thoroughly clear what is believed to
be a consequence of the rest of this License.

  8. If the distribution and/or use of the Program is restricted in
certain countries either by patents or by copyrighted interfaces, the
original copyright holder who places the Program under this License
may add an explicit geographical distribution limitation excluding
those countries, so that distribution is permitted only in or among
countries not thus excluded.  In such case, this License incorporates
the limitation as if written in the body of this License.

  9. The Free Software Foundation may publish revised and/or new versions
of the General Public License from time to time.  Such new versions will
be similar in spirit to the present version, but may differ in detail to
address new problems or concerns.

Each version is given a distinguishing version number.  If the Program
specifies a version number of this License which applies to it and "any
later version", you have the option of following the terms and conditions
either of that version or of any later version published by the Free
Software Foundation.  If the Program does not specify a version number of
this License, you may choose any version ever published by the Free Software
Foundation.

  10. If you wish to incorporate parts of the Program into other free
programs whose distribution conditions are different, write to the author
to ask for permission.  For software which is copyrighted by the Free
Software Foundation, write to the Free Software Foundation; we sometimes
make exceptions for this.  Our decision will be guided by the two goals
of preserving the free status of all derivatives of our free software and
of promoting the sharing and reuse of software generally.

			    NO WARRANTY

  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED
OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS
TO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE
PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,
REPAIR OR CORRECTION.

  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,
INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING
OUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED
TO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY
YOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER
PROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE
POSSIBILITY OF SUCH DAMAGES.

		     END OF TERMS AND CONDITIONS

	    How to Apply These Terms to Your New Programs

  If you develop a new program, and you want it to be of the greatest
possible use to the public, the best way to achieve this is to make it
free software which everyone can redistribute and change under these terms.

  To do so, attach the following notices to the program.  It is safest
to attach them to the start of each source file to most effectively
convey the exclusion of warranty; and each file should have at least
the "copyright" line and a pointer to where the full notice is found.

    <one line to give the program's name and a brief idea of what it does.>
    Copyright (C) <year>  <name of author>

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


Also add information on how to contact you by electronic and paper mail.

If the program is interactive, make it output a short notice like this
when it starts in an interactive mode:

    Gnomovision version 69, Copyright (C) year name of author
    Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
    This is free software, and you are welcome to redistribute it
    under certain conditions; type `show c' for details.

The hypothetical commands `show w' and `show c' should show the appropriate
parts of the General Public License.  Of course, the commands you use may
be called something other than `show w' and `show c'; they could even be
mouse-clicks or menu items--whatever suits your program.

You should also get your employer (if you work as a programmer) or your
school, if any, to sign a "copyright disclaimer" for the program, if
necessary.  Here is a sample; alter the names:

  Yoyodyne, Inc., hereby disclaims all copyright interest in the program
  `Gnomovision' (which makes passes at compilers) written by James Hacker.

  <signature of Ty Coon>, 1 April 1989
  Ty Coon, President of Vice

This General Public License does not permit incorporating your program into
proprietary programs.  If your program is a subroutine library, you may
consider it more useful to permit linking proprietary applications with the
library.  If this is what you want to do, use the GNU Library General
Public License instead of this License.


                                       
-------------------------------COPYRIGHT NOTICE------------------------------/
------- Installing T-Coffee Modes

------- The installer will now install the expresso components  for very accurate structure based multiple sequence alignments
--2021-04-21 20:58:57--  http://www.tcoffee.org/Packages/Binaries/plugins/macosx/TMalign
Resolving www.tcoffee.org... 23.23.248.102
Connecting to www.tcoffee.org|23.23.248.102|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 365048 (356K)
Saving to: 'x'

x                            100%[=============================================>] 356.49K   707KB/s    in 0.5s    

2021-04-21 20:58:57 (707 KB/s) - 'x' saved [365048/365048]


------- Installing TMalign
--2021-04-21 20:58:57--  http://www.tcoffee.org/Packages/Binaries/plugins/macosx/strike
Resolving www.tcoffee.org... 23.23.248.102
Connecting to www.tcoffee.org|23.23.248.102|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 72204 (71K)
Saving to: 'x'

x                            100%[=============================================>]  70.51K   201KB/s    in 0.4s    

2021-04-21 20:58:58 (201 KB/s) - 'x' saved [72204/72204]


------- Installing strike
Can't locate XML/Simple.pm in @INC (you may need to install the XML::Simple module) (@INC contains: /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2 /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/5.26.2 .).
BEGIN failed--compilation aborted.
Can't locate XML/Simple.pm in @INC (you may need to install the XML::Simple module) (@INC contains: /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2 /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/5.26.2 .).
BEGIN failed--compilation aborted.
Password:

CPAN.pm requires configuration, but most of it can be done automatically.
If you answer 'no' below, you will enter an interactive dialog for each
configuration option instead.

Would you like to configure as much as possible automatically? [yes] yes


Autoconfiguration complete.

commit: wrote '/Users/soyoungjung/.cpan/CPAN/MyConfig.pm'

You can re-run configuration any time with 'o conf init' in the CPAN shell
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/01mailrc.txt.gz
Reading '/Users/soyoungjung/.cpan/sources/authors/01mailrc.txt.gz'
............................................................................DONE
Fetching with HTTP::Tiny:
http://www.cpan.org/modules/02packages.details.txt.gz
Reading '/Users/soyoungjung/.cpan/sources/modules/02packages.details.txt.gz'
  Database was generated on Thu, 22 Apr 2021 01:41:03 GMT
  HTTP::Date not available
.............
  New CPAN.pm version (v2.28) available.
  [Currently running version is v2.18]
  You might want to try
    install CPAN
    reload cpan
  to both upgrade CPAN.pm and run the new version without leaving
  the current session.


...............................................................DONE
Fetching with HTTP::Tiny:
http://www.cpan.org/modules/03modlist.data.gz
Reading '/Users/soyoungjung/.cpan/sources/modules/03modlist.data.gz'
DONE
Writing /Users/soyoungjung/.cpan/Metadata
Running install for module 'XML::Simple'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/G/GR/GRANTM/CHECKSUMS
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/G/GR/GRANTM/XML-Simple-2.25.tar.gz ok
'YAML' not installed, will not store persistent state
Configuring G/GR/GRANTM/XML-Simple-2.25.tar.gz with Makefile.PL
Checking if your kit is complete...
Looks good
Warning: prerequisite XML::NamespaceSupport 1.04 not found.
Warning: prerequisite XML::SAX 0.15 not found.
Warning: prerequisite XML::SAX::Expat 0 not found.
Generating a Unix-style Makefile
Writing Makefile for XML::Simple
Writing MYMETA.yml and MYMETA.json
  GRANTM/XML-Simple-2.25.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- OK
Running make for G/GR/GRANTM/XML-Simple-2.25.tar.gz
---- Unsatisfied dependencies detected during ----
----       GRANTM/XML-Simple-2.25.tar.gz      ----
    XML::NamespaceSupport [requires]
    XML::SAX [requires]
    XML::SAX::Expat [requires]
Running install for module 'XML::NamespaceSupport'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/P/PE/PERIGRIN/CHECKSUMS
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz ok
Configuring P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz with Makefile.PL
Checking if your kit is complete...
Looks good
Generating a Unix-style Makefile
Writing Makefile for XML::NamespaceSupport
Writing MYMETA.yml and MYMETA.json
  PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- OK
Running make for P/PE/PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
cp lib/XML/NamespaceSupport.pm blib/lib/XML/NamespaceSupport.pm
Manifying 1 pod document
  PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
  /usr/bin/make -- OK
Running make test
PERL_DL_NONLAZY=1 "/Users/soyoungjung/opt/miniconda2/bin/perl" "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00base.t .. ok     
All tests successful.
Files=1, Tests=49,  0 wallclock secs ( 0.02 usr  0.01 sys +  0.04 cusr  0.01 csys =  0.08 CPU)
Result: PASS
  PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
  /usr/bin/make test -- OK
Running make install
Manifying 1 pod document
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/NamespaceSupport.pm
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::NamespaceSupport.3
Appending installation info to /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level/perllocal.pod
  PERIGRIN/XML-NamespaceSupport-1.12.tar.gz
  /usr/bin/make install  -- OK
Running install for module 'XML::SAX'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/G/GR/GRANTM/XML-SAX-1.02.tar.gz ok
Configuring G/GR/GRANTM/XML-SAX-1.02.tar.gz with Makefile.PL
Checking if your kit is complete...
Looks good
Warning: prerequisite XML::SAX::Base 1.05 not found.
Generating a Unix-style Makefile
Writing Makefile for XML::SAX
Writing MYMETA.yml and MYMETA.json
  GRANTM/XML-SAX-1.02.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- OK
Running make for G/GR/GRANTM/XML-SAX-1.02.tar.gz
---- Unsatisfied dependencies detected during ----
----        GRANTM/XML-SAX-1.02.tar.gz        ----
    XML::SAX::Base [requires]
Running install for module 'XML::SAX::Base'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz ok
Configuring G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz with Makefile.PL
Checking if your kit is complete...
Looks good
Generating a Unix-style Makefile
Writing Makefile for XML::SAX::Base
Writing MYMETA.yml and MYMETA.json
  GRANTM/XML-SAX-Base-1.09.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- OK
Running make for G/GR/GRANTM/XML-SAX-Base-1.09.tar.gz
cp BuildSAXBase.pl blib/lib/XML/SAX/BuildSAXBase.pl
cp lib/XML/SAX/Exception.pm blib/lib/XML/SAX/Exception.pm
cp lib/XML/SAX/Base.pm blib/lib/XML/SAX/Base.pm
Manifying 3 pod documents
  GRANTM/XML-SAX-Base-1.09.tar.gz
  /usr/bin/make -- OK
Running make test
PERL_DL_NONLAZY=1 "/Users/soyoungjung/opt/miniconda2/bin/perl" "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00basic.t ............. ok   
t/01exception.t ......... ok     
t/01simpledriver.t ...... ok   
t/02simplefilter.t ...... ok   
t/03chdriver.t .......... ok     
t/04chfilter.t .......... ok     
t/05dtdhdriver.t ........ ok   
t/06lexhdriver.t ........ ok   
t/07declhdriver.t ....... ok   
t/08errorhdriver.t ...... ok   
t/09resoldriver.t ....... ok   
t/10dochdriver.t ........ ok     
t/11sax1multiclass.t .... ok     
t/12sax2multiclass.t .... ok     
t/13handlerswitch.t ..... ok   
t/14downstreamswitch.t .. ok   
t/15parentswitch.t ...... ok   
t/16gethandlers.t ....... ok   
t/release-pod-syntax.t .. skipped: these tests are for release candidate testing
All tests successful.
Files=19, Tests=137,  1 wallclock secs ( 0.06 usr  0.03 sys +  0.37 cusr  0.09 csys =  0.55 CPU)
Result: PASS
  GRANTM/XML-SAX-Base-1.09.tar.gz
  /usr/bin/make test -- OK
Running make install
Manifying 3 pod documents
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/Exception.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/Base.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/BuildSAXBase.pl
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::Base.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::BuildSAXBase.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::Exception.3
Appending installation info to /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level/perllocal.pod
  GRANTM/XML-SAX-Base-1.09.tar.gz
  /usr/bin/make install  -- OK
  GRANTM/XML-SAX-1.02.tar.gz
  Has already been unwrapped into directory /Users/soyoungjung/.cpan/build/XML-SAX-1.02-0
  GRANTM/XML-SAX-1.02.tar.gz
  Has already been prepared
Running make for G/GR/GRANTM/XML-SAX-1.02.tar.gz
cp lib/XML/SAX/DocumentLocator.pm blib/lib/XML/SAX/DocumentLocator.pm
cp lib/XML/SAX/Intro.pod blib/lib/XML/SAX/Intro.pod
cp lib/XML/SAX/PurePerl/DebugHandler.pm blib/lib/XML/SAX/PurePerl/DebugHandler.pm
cp lib/XML/SAX/PurePerl/DTDDecls.pm blib/lib/XML/SAX/PurePerl/DTDDecls.pm
cp lib/XML/SAX/PurePerl/XMLDecl.pm blib/lib/XML/SAX/PurePerl/XMLDecl.pm
cp lib/XML/SAX/PurePerl/Reader/NoUnicodeExt.pm blib/lib/XML/SAX/PurePerl/Reader/NoUnicodeExt.pm
cp lib/XML/SAX/PurePerl/NoUnicodeExt.pm blib/lib/XML/SAX/PurePerl/NoUnicodeExt.pm
cp lib/XML/SAX/PurePerl/EncodingDetect.pm blib/lib/XML/SAX/PurePerl/EncodingDetect.pm
cp lib/XML/SAX/PurePerl/Reader/String.pm blib/lib/XML/SAX/PurePerl/Reader/String.pm
cp lib/XML/SAX/PurePerl/Productions.pm blib/lib/XML/SAX/PurePerl/Productions.pm
cp lib/XML/SAX/PurePerl/Exception.pm blib/lib/XML/SAX/PurePerl/Exception.pm
cp lib/XML/SAX/PurePerl/UnicodeExt.pm blib/lib/XML/SAX/PurePerl/UnicodeExt.pm
cp lib/XML/SAX/PurePerl/Reader.pm blib/lib/XML/SAX/PurePerl/Reader.pm
cp lib/XML/SAX/ParserFactory.pm blib/lib/XML/SAX/ParserFactory.pm
cp lib/XML/SAX/PurePerl/Reader/Stream.pm blib/lib/XML/SAX/PurePerl/Reader/Stream.pm
cp lib/XML/SAX/PurePerl/Reader/UnicodeExt.pm blib/lib/XML/SAX/PurePerl/Reader/UnicodeExt.pm
cp lib/XML/SAX.pm blib/lib/XML/SAX.pm
cp lib/XML/SAX/PurePerl.pm blib/lib/XML/SAX/PurePerl.pm
cp lib/XML/SAX/PurePerl/Reader/URI.pm blib/lib/XML/SAX/PurePerl/Reader/URI.pm
cp lib/XML/SAX/PurePerl/DocType.pm blib/lib/XML/SAX/PurePerl/DocType.pm
Manifying 6 pod documents
  GRANTM/XML-SAX-1.02.tar.gz
  /usr/bin/make -- OK
Running make test
PERL_DL_NONLAZY=1 "/Users/soyoungjung/opt/miniconda2/bin/perl" "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00basic.t ....... ok   
t/01known.t ....... ok   
t/10xmldecl1.t .... ok   
t/11xmldecl2.t .... ok     
t/12miscstart.t ... ok   
t/13int_ent.t ..... ok   
t/14encoding.t .... ok   
t/15element.t ..... ok     
t/16large.t ....... 1/3 parsed 80085 bytes in 0 seconds
t/16large.t ....... ok   
t/19pi.t .......... ok   
t/20factory.t ..... ok     
t/21saxini.t ...... ok   
t/30parse_file.t .. ok   
t/40cdata.t ....... ok   
t/42entities.t .... ok   
t/99cleanup.t ..... ok   
All tests successful.
Files=16, Tests=113,  3 wallclock secs ( 0.06 usr  0.03 sys +  1.02 cusr  0.17 csys =  1.28 CPU)
Result: PASS
  GRANTM/XML-SAX-1.02.tar.gz
  /usr/bin/make test -- OK
Running make install
Manifying 6 pod documents
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/Intro.pod
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/ParserFactory.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/DocumentLocator.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Exception.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/NoUnicodeExt.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/DTDDecls.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/XMLDecl.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/EncodingDetect.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/DebugHandler.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/UnicodeExt.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/DocType.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Productions.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader/NoUnicodeExt.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader/Stream.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader/UnicodeExt.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader/URI.pm
Installing /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/XML/SAX/PurePerl/Reader/String.pm
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::PurePerl::Reader.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::Intro.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::DocumentLocator.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::ParserFactory.3
Installing /Users/soyoungjung/opt/miniconda2/man/man3/XML::SAX::PurePerl.3
Appending installation info to /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level/perllocal.pod
could not find ParserDetails.ini in /Users/soyoungjung/.cpan/build/XML-SAX-1.02-0/blib/lib/XML/SAX
  GRANTM/XML-SAX-1.02.tar.gz
  /usr/bin/make install  -- OK
Running install for module 'XML::SAX::Expat'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/B/BJ/BJOERN/XML-SAX-Expat-0.51.tar.gz
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/B/BJ/BJOERN/CHECKSUMS
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/B/BJ/BJOERN/XML-SAX-Expat-0.51.tar.gz ok
Configuring B/BJ/BJOERN/XML-SAX-Expat-0.51.tar.gz with Makefile.PL
Checking if your kit is complete...
Looks good
Warning: prerequisite XML::Parser 2.27 not found.
Generating a Unix-style Makefile
Writing Makefile for XML::SAX::Expat
Writing MYMETA.yml and MYMETA.json
  BJOERN/XML-SAX-Expat-0.51.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- OK
Running make for B/BJ/BJOERN/XML-SAX-Expat-0.51.tar.gz
---- Unsatisfied dependencies detected during ----
----     BJOERN/XML-SAX-Expat-0.51.tar.gz     ----
    XML::Parser [requires]
Running install for module 'XML::Parser'
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/T/TO/TODDR/XML-Parser-2.46.tar.gz
Fetching with HTTP::Tiny:
http://www.cpan.org/authors/id/T/TO/TODDR/CHECKSUMS
Checksum for /Users/soyoungjung/.cpan/sources/authors/id/T/TO/TODDR/XML-Parser-2.46.tar.gz ok
Configuring T/TO/TODDR/XML-Parser-2.46.tar.gz with Makefile.PL
Couldn't find your C compiler
Compilation failed in require at Makefile.PL line 4.
BEGIN failed--compilation aborted at Makefile.PL line 4.
Warning: No success on command[/Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL]
  TODDR/XML-Parser-2.46.tar.gz
  /Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL -- NOT OK
  BJOERN/XML-SAX-Expat-0.51.tar.gz
  Has already been unwrapped into directory /Users/soyoungjung/.cpan/build/XML-SAX-Expat-0.51-0
  BJOERN/XML-SAX-Expat-0.51.tar.gz
  Has already been prepared
Running make for B/BJ/BJOERN/XML-SAX-Expat-0.51.tar.gz
Warning: Prerequisite 'XML::Parser => 2.27' for 'BJOERN/XML-SAX-Expat-0.51.tar.gz' failed when processing 'TODDR/XML-Parser-2.46.tar.gz' with 'writemakefile => NO '/Users/soyoungjung/opt/miniconda2/bin/perl Makefile.PL' returned status 512'. Continuing, but chances to succeed are limited.
cp Expat.pm blib/lib/XML/SAX/Expat.pm
Manifying 1 pod document
  BJOERN/XML-SAX-Expat-0.51.tar.gz
  /usr/bin/make -- OK
Running make test
PERL_DL_NONLAZY=1 "/Users/soyoungjung/opt/miniconda2/bin/perl" "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
t/00basic.t ... 1/1 Can't locate XML/Parser.pm in @INC (you may need to install the XML::Parser module) (@INC contains: /Users/soyoungjung/.cpan/build/XML-SAX-Expat-0.51-0/blib/lib /Users/soyoungjung/.cpan/build/XML-SAX-Expat-0.51-0/blib/arch /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/site_perl/5.26.2 /Users/soyoungjung/opt/miniconda2/lib/5.26.2/darwin-thread-multi-2level /Users/soyoungjung/opt/miniconda2/lib/5.26.2 .) at /Users/soyoungjung/.cpan/build/XML-SAX-Expat-0.51-0/blib/lib/XML/SAX/Expat.pm line 11.
BEGIN failed--compilation aborted at /Users/soyoungjung/.cpan/build/XML-SAX-Expat-0.51-0/blib/lib/XML/SAX/Expat.pm line 11.
Compilation failed in require at t/00basic.t line 3.
BEGIN failed--compilation aborted at t/00basic.t line 3.
t/00basic.t ... Dubious, test returned 2 (wstat 512, 0x200)
Failed 1/1 subtests 
t/98podsyn.t .. skipped: Test::Pod 1.00 required for testing POD
t/99podcov.t .. skipped: Test::Pod::Coverage required for testing pod coverage

Test Summary Report
-------------------
t/00basic.t (Wstat: 512 Tests: 1 Failed: 1)
  Failed test:  1
  Non-zero exit status: 2
Files=3, Tests=1,  0 wallclock secs ( 0.02 usr  0.01 sys +  0.08 cusr  0.02 csys =  0.13 CPU)
Result: FAIL
Failed 1/3 test programs. 1/1 subtests failed.
make: *** [test_dynamic] Error 255
  BJOERN/XML-SAX-Expat-0.51.tar.gz
one dependency not OK (XML::Parser); additionally test harness failed
  /usr/bin/make test -- NOT OK
//hint// to see the cpan-testers results for installing this module, try:
  reports BJOERN/XML-SAX-Expat-0.51.tar.gz
  GRANTM/XML-Simple-2.25.tar.gz
  Has already been unwrapped into directory /Users/soyoungjung/.cpan/build/XML-Simple-2.25-0
  GRANTM/XML-Simple-2.25.tar.gz
  Has already been prepared
Running make for G/GR/GRANTM/XML-Simple-2.25.tar.gz
Warning: Prerequisite 'XML::SAX::Expat => 0' for 'GRANTM/XML-Simple-2.25.tar.gz' failed when processing 'BJOERN/XML-SAX-Expat-0.51.tar.gz' with 'make_test => NO one dependency not OK (XML::Parser); additionally test harness failed'. Continuing, but chances to succeed are limited.
cp lib/XML/Simple/FAQ.pod blib/lib/XML/Simple/FAQ.pod
cp lib/XML/Simple.pm blib/lib/XML/Simple.pm
Manifying 2 pod documents
  GRANTM/XML-Simple-2.25.tar.gz
  /usr/bin/make -- OK
Running make test
PERL_DL_NONLAZY=1 "/Users/soyoungjung/opt/miniconda2/bin/perl" "-MExtUtils::Command::MM" "-MTest::Harness" "-e" "undef *Test::Harness::Switches; test_harness(0, 'blib/lib', 'blib/arch')" t/*.t
# Package                        Version
#  perl                           5.26.2
#  XML::Simple                    2.25
#  Storable                       2.62
#  XML::Parser                    Not Installed
#  XML::SAX                       1.02
#  XML::NamespaceSupport          1.12
t/0_Config.t ............. ok   
t/1_XMLin.t .............. ok       
t/2_XMLout.t ............. ok       
t/3_Storable.t ........... 9/23 


##running clustalw
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw-2.1-macosx/clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP 

When I put this command,
'''zsh: bad CPU type in executable: clustalw-2.1-macosx/clustalw2'''
this error message came out
so I rerun the 
'''
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda create -n clustalw2 -c biobuilds -y clustalw
'''
based on the Beth's comment

'''
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.8.3
  latest version: 4.10.1

Please update conda by running

    $ conda update -n base -c defaults conda



## Package Plan ##

  environment location: /Users/soyoungjung/opt/miniconda2/envs/clustalw2

  added / updated specs:
    - clustalw


The following NEW packages will be INSTALLED:

  clustalw           biobuilds/osx-64::clustalw-2.1-1


Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate clustalw2
#
# To deactivate an active environment, use
#
#     $ conda deactivate
'''

and then I updated conda as they described
'''(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda update -n base -c defaults conda'''
it took me 30 secs

# To activate this environment, use
#
#     $ conda activate clustalw2

(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate clustalw2




