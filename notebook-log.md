# ClustalW
## Download the ClustalW
Downloaded ClustalW file clustalw-2.1-macosx.dmg from here (http://www.clustal.org/clustal2/) and copied the folder into ```Document/Bot563```

## Running the ClustalW
I tried to run the ClustalW:
``` (base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw-2.1-macosx/clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP```

But then, this error message came out:
```
zsh: bad CPU type in executable: clustalw-2.1-macosx/clustalw2
```

So based on the Beth's comment on Slack, I rerun:
```
conda activate
conda create -n clustalw2 -c biobuilds -y clustalw
```

and then I was able to run the clustalw:
```
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
```

So now I activate the clustalw2 with conda with this command:
```
conda activate clustalw2
```

and started alignment using the command
```
clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned.fasta -OUTPUT=PHYLIP
```

Then it was running for like 1-2 mins and I got the aligned data
```
CLUSTAL 2.1 Multiple Sequence Alignments


Sequence format is Pearson
Sequence 1: Mycobacterium_tuberculosis_Type2_DHS               462 aa
Sequence 2: Arabidopsis_thaliana_DHS1                          525 aa
Sequence 3: Arabidopsis_thaliana_DHS2                          507 aa
Sequence 4: Amborella_trichopoda_AmTr_v1.0_scaffold00008.219   527 aa
Sequence 5: Amborella_trichopoda_AmTr_v1.0_scaffold00002.141   525 aa
Sequence 6: Oryza_sativa_LOC_Os03g27230.1                      555 aa
Sequence 7: Oryza_sativa_LOC_Os07g42960.1                      537 aa
Sequence 8: Oryza_sativa_LOC_Os08g37790.1                      505 aa
Sequence 9: Oryza_sativa_LOC_Os10g41480.1                      508 aa
Sequence 10: Oryza_sativa_LOC_Os07g45430.1                      356 aa
Sequence 11: Solanum_lycopersicum_Solyc11g009080.1.1            511 aa
Sequence 12: Solanum_lycopersicum_Solyc04g074480.2.1            541 aa
Sequence 13: Medicago_truncatula_Medtr5g064500.1                532 aa
Sequence 14: Medicago_truncatula_Medtr2g009080.1                510 aa
Sequence 15: Chlamydomonas_reinhardtii_Cre17.g726750.t1.2       502 aa
Sequence 16: Arabidopsis_thaliana_DHS3                          527 aa
Sequence 17: Sorghum_bicolor_Sobic.001G351000.1                 551 aa
Sequence 18: Sorghum_bicolor_Sobic.002G379600.1                 540 aa
Sequence 19: Sorghum_bicolor_Sobic.007G225700.1                 508 aa
Sequence 20: Sorghum_bicolor_Sobic.001G294500.1                 499 aa
Sequence 21: Sorghum_bicolor_Sobic.001G295300.1                 495 aa
Sequence 22: Marchantia_polymorpha_Mapoly0008s0188.1            538 aa
Sequence 23: Volvox_carteri_Vocar.0001s1356.1                   509 aa
Sequence 24: Selaginella_moellendorffii_174150                  514 aa
Sequence 25: Populus_trichocarpa_Potri.005G073300.1             531 aa
Sequence 26: Populus_trichocarpa_Potri.002G099200.1             531 aa
Sequence 27: Populus_trichocarpa_Potri.005G162800.1             531 aa
Sequence 28: Populus_trichocarpa_Potri.001G150500.1             537 aa
Sequence 29: Populus_trichocarpa_Potri.007G095700.1             432 aa
Sequence 30: Brassica_rapa_Brara.A00086.1                       518 aa
Sequence 31: Brassica_rapa_Brara.I03314.1                       518 aa
Sequence 32: Brassica_rapa_Brara.G03573.1                       518 aa
Sequence 33: Brassica_rapa_Brara.A00448.1                       508 aa
Sequence 34: Gossypium_raimondii_Gorai.009G235000.1             539 aa
Sequence 35: Gossypium_raimondii_Gorai.013G060200.1             516 aa
Sequence 36: Gossypium_raimondii_Gorai.006G214500.1             517 aa
Sequence 37: Theobroma_cacao_Thecc1EG034869t1                   539 aa
Sequence 38: Theobroma_cacao_Thecc1EG007435t1                   515 aa
Sequence 39: Theobroma_cacao_Thecc1EG015842t1                   519 aa
Sequence 40: Theobroma_cacao_Thecc1EG001069t1                   525 aa
Sequence 41: Cucumis_sativus_Cucsa.104270.1                     531 aa
Sequence 42: Cucumis_sativus_Cucsa.160130.1                     542 aa
Sequence 43: Cucumis_sativus_Cucsa.218120.1                     515 aa
Sequence 44: Cucumis_sativus_Cucsa.042710.1                     521 aa
Sequence 45: Spinacia_oleracea_Spo06646.1                       544 aa
Sequence 46: Spinacia_oleracea_Spo23834.1                       532 aa
Start of Pairwise alignments
Aligning...

Sequences (1:2) Aligned. Score:  45
Sequences (1:3) Aligned. Score:  45
Sequences (1:4) Aligned. Score:  46
Sequences (1:5) Aligned. Score:  46
Sequences (1:6) Aligned. Score:  45
Sequences (1:7) Aligned. Score:  45
Sequences (1:8) Aligned. Score:  45
Sequences (1:9) Aligned. Score:  45
Sequences (1:10) Aligned. Score:  45
Sequences (1:11) Aligned. Score:  45
Sequences (1:12) Aligned. Score:  44
Sequences (1:13) Aligned. Score:  45
Sequences (1:14) Aligned. Score:  44
Sequences (1:15) Aligned. Score:  43
Sequences (1:16) Aligned. Score:  45
Sequences (1:17) Aligned. Score:  46
Sequences (1:18) Aligned. Score:  44
Sequences (1:19) Aligned. Score:  46
Sequences (1:20) Aligned. Score:  44
Sequences (1:21) Aligned. Score:  44
Sequences (1:22) Aligned. Score:  46
Sequences (1:23) Aligned. Score:  43
Sequences (1:24) Aligned. Score:  45
Sequences (1:25) Aligned. Score:  44
Sequences (1:26) Aligned. Score:  44
Sequences (1:27) Aligned. Score:  45
Sequences (1:28) Aligned. Score:  45
Sequences (1:29) Aligned. Score:  37
Sequences (1:30) Aligned. Score:  45
Sequences (1:31) Aligned. Score:  44
Sequences (1:32) Aligned. Score:  45
Sequences (1:33) Aligned. Score:  45
Sequences (1:34) Aligned. Score:  43
Sequences (1:35) Aligned. Score:  45
Sequences (1:36) Aligned. Score:  46
Sequences (1:37) Aligned. Score:  45
Sequences (1:38) Aligned. Score:  45
Sequences (1:39) Aligned. Score:  46
Sequences (1:40) Aligned. Score:  44
Sequences (1:41) Aligned. Score:  45
Sequences (1:42) Aligned. Score:  44
Sequences (1:43) Aligned. Score:  46
Sequences (1:44) Aligned. Score:  45
Sequences (1:45) Aligned. Score:  44
Sequences (1:46) Aligned. Score:  43
Sequences (2:3) Aligned. Score:  75
Sequences (2:4) Aligned. Score:  73
Sequences (2:5) Aligned. Score:  73
Sequences (2:6) Aligned. Score:  75
Sequences (2:7) Aligned. Score:  74
Sequences (2:8) Aligned. Score:  75
Sequences (2:9) Aligned. Score:  65
Sequences (2:10) Aligned. Score:  83
Sequences (2:11) Aligned. Score:  80
Sequences (2:12) Aligned. Score:  73
Sequences (2:13) Aligned. Score:  76
Sequences (2:14) Aligned. Score:  71
Sequences (2:15) Aligned. Score:  55
Sequences (2:16) Aligned. Score:  75
Sequences (2:17) Aligned. Score:  76
Sequences (2:18) Aligned. Score:  73
Sequences (2:19) Aligned. Score:  74
Sequences (2:20) Aligned. Score:  66
Sequences (2:21) Aligned. Score:  66
Sequences (2:22) Aligned. Score:  67
Sequences (2:23) Aligned. Score:  54
Sequences (2:24) Aligned. Score:  69
Sequences (2:25) Aligned. Score:  80
Sequences (2:26) Aligned. Score:  76
Sequences (2:27) Aligned. Score:  76
Sequences (2:28) Aligned. Score:  69
Sequences (2:29) Aligned. Score:  77
Sequences (2:30) Aligned. Score:  92
Sequences (2:31) Aligned. Score:  76
Sequences (2:32) Aligned. Score:  75
Sequences (2:33) Aligned. Score:  74
Sequences (2:34) Aligned. Score:  77
Sequences (2:35) Aligned. Score:  74
Sequences (2:36) Aligned. Score:  70
Sequences (2:37) Aligned. Score:  75
Sequences (2:38) Aligned. Score:  74
Sequences (2:39) Aligned. Score:  69
Sequences (2:40) Aligned. Score:  73
Sequences (2:41) Aligned. Score:  78
Sequences (2:42) Aligned. Score:  76
Sequences (2:43) Aligned. Score:  75
Sequences (2:44) Aligned. Score:  69
Sequences (2:45) Aligned. Score:  72
Sequences (2:46) Aligned. Score:  73
Sequences (3:4) Aligned. Score:  79
Sequences (3:5) Aligned. Score:  77
Sequences (3:6) Aligned. Score:  73
Sequences (3:7) Aligned. Score:  77
Sequences (3:8) Aligned. Score:  77
Sequences (3:9) Aligned. Score:  68
Sequences (3:10) Aligned. Score:  83
Sequences (3:11) Aligned. Score:  76
Sequences (3:12) Aligned. Score:  77
Sequences (3:13) Aligned. Score:  77
Sequences (3:14) Aligned. Score:  79
Sequences (3:15) Aligned. Score:  53
Sequences (3:16) Aligned. Score:  76
Sequences (3:17) Aligned. Score:  75
Sequences (3:18) Aligned. Score:  76
Sequences (3:19) Aligned. Score:  74
Sequences (3:20) Aligned. Score:  68
Sequences (3:21) Aligned. Score:  68
Sequences (3:22) Aligned. Score:  71
Sequences (3:23) Aligned. Score:  54
Sequences (3:24) Aligned. Score:  72
Sequences (3:25) Aligned. Score:  76
Sequences (3:26) Aligned. Score:  78
Sequences (3:27) Aligned. Score:  80
Sequences (3:28) Aligned. Score:  76
Sequences (3:29) Aligned. Score:  69
Sequences (3:30) Aligned. Score:  75
Sequences (3:31) Aligned. Score:  75
Sequences (3:32) Aligned. Score:  76
Sequences (3:33) Aligned. Score:  91
Sequences (3:34) Aligned. Score:  79
Sequences (3:35) Aligned. Score:  81
Sequences (3:36) Aligned. Score:  74
Sequences (3:37) Aligned. Score:  76
Sequences (3:38) Aligned. Score:  83
Sequences (3:39) Aligned. Score:  74
Sequences (3:40) Aligned. Score:  69
Sequences (3:41) Aligned. Score:  77
Sequences (3:42) Aligned. Score:  75
Sequences (3:43) Aligned. Score:  80
Sequences (3:44) Aligned. Score:  73
Sequences (3:45) Aligned. Score:  78
Sequences (3:46) Aligned. Score:  74
Sequences (4:5) Aligned. Score:  77
Sequences (4:6) Aligned. Score:  78
Sequences (4:7) Aligned. Score:  76
Sequences (4:8) Aligned. Score:  78
Sequences (4:9) Aligned. Score:  68
Sequences (4:10) Aligned. Score:  85
Sequences (4:11) Aligned. Score:  77
Sequences (4:12) Aligned. Score:  77
Sequences (4:13) Aligned. Score:  79
Sequences (4:14) Aligned. Score:  76
Sequences (4:15) Aligned. Score:  54
Sequences (4:16) Aligned. Score:  75
Sequences (4:17) Aligned. Score:  77
Sequences (4:18) Aligned. Score:  77
Sequences (4:19) Aligned. Score:  77
Sequences (4:20) Aligned. Score:  70
Sequences (4:21) Aligned. Score:  70
Sequences (4:22) Aligned. Score:  68
Sequences (4:23) Aligned. Score:  55
Sequences (4:24) Aligned. Score:  75
Sequences (4:25) Aligned. Score:  78
Sequences (4:26) Aligned. Score:  79
Sequences (4:27) Aligned. Score:  79
Sequences (4:28) Aligned. Score:  71
Sequences (4:29) Aligned. Score:  71
Sequences (4:30) Aligned. Score:  74
Sequences (4:31) Aligned. Score:  77
Sequences (4:32) Aligned. Score:  75
Sequences (4:33) Aligned. Score:  77
Sequences (4:34) Aligned. Score:  81
Sequences (4:35) Aligned. Score:  75
Sequences (4:36) Aligned. Score:  73
Sequences (4:37) Aligned. Score:  78
Sequences (4:38) Aligned. Score:  78
Sequences (4:39) Aligned. Score:  73
Sequences (4:40) Aligned. Score:  69
Sequences (4:41) Aligned. Score:  76
Sequences (4:42) Aligned. Score:  76
Sequences (4:43) Aligned. Score:  78
Sequences (4:44) Aligned. Score:  71
Sequences (4:45) Aligned. Score:  73
Sequences (4:46) Aligned. Score:  73
Sequences (5:6) Aligned. Score:  76
Sequences (5:7) Aligned. Score:  74
Sequences (5:8) Aligned. Score:  77
Sequences (5:9) Aligned. Score:  69
Sequences (5:10) Aligned. Score:  85
Sequences (5:11) Aligned. Score:  78
Sequences (5:12) Aligned. Score:  73
Sequences (5:13) Aligned. Score:  78
Sequences (5:14) Aligned. Score:  75
Sequences (5:15) Aligned. Score:  54
Sequences (5:16) Aligned. Score:  73
Sequences (5:17) Aligned. Score:  76
Sequences (5:18) Aligned. Score:  75
Sequences (5:19) Aligned. Score:  75
Sequences (5:20) Aligned. Score:  71
Sequences (5:21) Aligned. Score:  71
Sequences (5:22) Aligned. Score:  72
Sequences (5:23) Aligned. Score:  54
Sequences (5:24) Aligned. Score:  71
Sequences (5:25) Aligned. Score:  75
Sequences (5:26) Aligned. Score:  77
Sequences (5:27) Aligned. Score:  78
Sequences (5:28) Aligned. Score:  73
Sequences (5:29) Aligned. Score:  71
Sequences (5:30) Aligned. Score:  75
Sequences (5:31) Aligned. Score:  75
Sequences (5:32) Aligned. Score:  73
Sequences (5:33) Aligned. Score:  77
Sequences (5:34) Aligned. Score:  77
Sequences (5:35) Aligned. Score:  76
Sequences (5:36) Aligned. Score:  74
Sequences (5:37) Aligned. Score:  76
Sequences (5:38) Aligned. Score:  77
Sequences (5:39) Aligned. Score:  73
Sequences (5:40) Aligned. Score:  68
Sequences (5:41) Aligned. Score:  76
Sequences (5:42) Aligned. Score:  74
Sequences (5:43) Aligned. Score:  77
Sequences (5:44) Aligned. Score:  72
Sequences (5:45) Aligned. Score:  74
Sequences (5:46) Aligned. Score:  72
Sequences (6:7) Aligned. Score:  82
Sequences (6:8) Aligned. Score:  78
Sequences (6:9) Aligned. Score:  68
Sequences (6:10) Aligned. Score:  91
Sequences (6:11) Aligned. Score:  77
Sequences (6:12) Aligned. Score:  75
Sequences (6:13) Aligned. Score:  75
Sequences (6:14) Aligned. Score:  73
Sequences (6:15) Aligned. Score:  53
Sequences (6:16) Aligned. Score:  77
Sequences (6:17) Aligned. Score:  84
Sequences (6:18) Aligned. Score:  81
Sequences (6:19) Aligned. Score:  77
Sequences (6:20) Aligned. Score:  69
Sequences (6:21) Aligned. Score:  69
Sequences (6:22) Aligned. Score:  68
Sequences (6:23) Aligned. Score:  54
Sequences (6:24) Aligned. Score:  71
Sequences (6:25) Aligned. Score:  74
Sequences (6:26) Aligned. Score:  77
Sequences (6:27) Aligned. Score:  78
Sequences (6:28) Aligned. Score:  69
Sequences (6:29) Aligned. Score:  73
Sequences (6:30) Aligned. Score:  75
Sequences (6:31) Aligned. Score:  77
Sequences (6:32) Aligned. Score:  77
Sequences (6:33) Aligned. Score:  73
Sequences (6:34) Aligned. Score:  76
Sequences (6:35) Aligned. Score:  74
Sequences (6:36) Aligned. Score:  70
Sequences (6:37) Aligned. Score:  74
Sequences (6:38) Aligned. Score:  74
Sequences (6:39) Aligned. Score:  72
Sequences (6:40) Aligned. Score:  66
Sequences (6:41) Aligned. Score:  74
Sequences (6:42) Aligned. Score:  73
Sequences (6:43) Aligned. Score:  75
Sequences (6:44) Aligned. Score:  71
Sequences (6:45) Aligned. Score:  69
Sequences (6:46) Aligned. Score:  72
Sequences (7:8) Aligned. Score:  78
Sequences (7:9) Aligned. Score:  67
Sequences (7:10) Aligned. Score:  100
Sequences (7:11) Aligned. Score:  78
Sequences (7:12) Aligned. Score:  76
Sequences (7:13) Aligned. Score:  75
Sequences (7:14) Aligned. Score:  74
Sequences (7:15) Aligned. Score:  54
Sequences (7:16) Aligned. Score:  76
Sequences (7:17) Aligned. Score:  82
Sequences (7:18) Aligned. Score:  89
Sequences (7:19) Aligned. Score:  75
Sequences (7:20) Aligned. Score:  69
Sequences (7:21) Aligned. Score:  69
Sequences (7:22) Aligned. Score:  67
Sequences (7:23) Aligned. Score:  53
Sequences (7:24) Aligned. Score:  72
Sequences (7:25) Aligned. Score:  75
Sequences (7:26) Aligned. Score:  78
Sequences (7:27) Aligned. Score:  80
Sequences (7:28) Aligned. Score:  69
Sequences (7:29) Aligned. Score:  74
Sequences (7:30) Aligned. Score:  74
Sequences (7:31) Aligned. Score:  77
Sequences (7:32) Aligned. Score:  79
Sequences (7:33) Aligned. Score:  76
Sequences (7:34) Aligned. Score:  77
Sequences (7:35) Aligned. Score:  77
Sequences (7:36) Aligned. Score:  72
Sequences (7:37) Aligned. Score:  75
Sequences (7:38) Aligned. Score:  76
Sequences (7:39) Aligned. Score:  71
Sequences (7:40) Aligned. Score:  67
Sequences (7:41) Aligned. Score:  75
Sequences (7:42) Aligned. Score:  76
Sequences (7:43) Aligned. Score:  76
Sequences (7:44) Aligned. Score:  70
Sequences (7:45) Aligned. Score:  73
Sequences (7:46) Aligned. Score:  74
Sequences (8:9) Aligned. Score:  71
Sequences (8:10) Aligned. Score:  86
Sequences (8:11) Aligned. Score:  77
Sequences (8:12) Aligned. Score:  79
Sequences (8:13) Aligned. Score:  78
Sequences (8:14) Aligned. Score:  75
Sequences (8:15) Aligned. Score:  55
Sequences (8:16) Aligned. Score:  79
Sequences (8:17) Aligned. Score:  79
Sequences (8:18) Aligned. Score:  77
Sequences (8:19) Aligned. Score:  89
Sequences (8:20) Aligned. Score:  72
Sequences (8:21) Aligned. Score:  71
Sequences (8:22) Aligned. Score:  69
Sequences (8:23) Aligned. Score:  57
Sequences (8:24) Aligned. Score:  72
Sequences (8:25) Aligned. Score:  77
Sequences (8:26) Aligned. Score:  80
Sequences (8:27) Aligned. Score:  80
Sequences (8:28) Aligned. Score:  74
Sequences (8:29) Aligned. Score:  72
Sequences (8:30) Aligned. Score:  75
Sequences (8:31) Aligned. Score:  80
Sequences (8:32) Aligned. Score:  77
Sequences (8:33) Aligned. Score:  76
Sequences (8:34) Aligned. Score:  80
Sequences (8:35) Aligned. Score:  77
Sequences (8:36) Aligned. Score:  73
Sequences (8:37) Aligned. Score:  77
Sequences (8:38) Aligned. Score:  77
Sequences (8:39) Aligned. Score:  75
Sequences (8:40) Aligned. Score:  68
Sequences (8:41) Aligned. Score:  76
Sequences (8:42) Aligned. Score:  77
Sequences (8:43) Aligned. Score:  78
Sequences (8:44) Aligned. Score:  73
Sequences (8:45) Aligned. Score:  76
Sequences (8:46) Aligned. Score:  75
Sequences (9:10) Aligned. Score:  75
Sequences (9:11) Aligned. Score:  66
Sequences (9:12) Aligned. Score:  68
Sequences (9:13) Aligned. Score:  69
Sequences (9:14) Aligned. Score:  66
Sequences (9:15) Aligned. Score:  53
Sequences (9:16) Aligned. Score:  68
Sequences (9:17) Aligned. Score:  71
Sequences (9:18) Aligned. Score:  67
Sequences (9:19) Aligned. Score:  70
Sequences (9:20) Aligned. Score:  82
Sequences (9:21) Aligned. Score:  81
Sequences (9:22) Aligned. Score:  65
Sequences (9:23) Aligned. Score:  54
Sequences (9:24) Aligned. Score:  65
Sequences (9:25) Aligned. Score:  68
Sequences (9:26) Aligned. Score:  68
Sequences (9:27) Aligned. Score:  67
Sequences (9:28) Aligned. Score:  69
Sequences (9:29) Aligned. Score:  65
Sequences (9:30) Aligned. Score:  66
Sequences (9:31) Aligned. Score:  67
Sequences (9:32) Aligned. Score:  67
Sequences (9:33) Aligned. Score:  66
Sequences (9:34) Aligned. Score:  68
Sequences (9:35) Aligned. Score:  67
Sequences (9:36) Aligned. Score:  68
Sequences (9:37) Aligned. Score:  68
Sequences (9:38) Aligned. Score:  67
Sequences (9:39) Aligned. Score:  69
Sequences (9:40) Aligned. Score:  62
Sequences (9:41) Aligned. Score:  69
Sequences (9:42) Aligned. Score:  67
Sequences (9:43) Aligned. Score:  67
Sequences (9:44) Aligned. Score:  69
Sequences (9:45) Aligned. Score:  65
Sequences (9:46) Aligned. Score:  66
Sequences (10:11) Aligned. Score:  84
Sequences (10:12) Aligned. Score:  86
Sequences (10:13) Aligned. Score:  86
Sequences (10:14) Aligned. Score:  84
Sequences (10:15) Aligned. Score:  59
Sequences (10:16) Aligned. Score:  86
Sequences (10:17) Aligned. Score:  91
Sequences (10:18) Aligned. Score:  96
Sequences (10:19) Aligned. Score:  84
Sequences (10:20) Aligned. Score:  75
Sequences (10:21) Aligned. Score:  74
Sequences (10:22) Aligned. Score:  77
Sequences (10:23) Aligned. Score:  59
Sequences (10:24) Aligned. Score:  77
Sequences (10:25) Aligned. Score:  84
Sequences (10:26) Aligned. Score:  86
Sequences (10:27) Aligned. Score:  88
Sequences (10:28) Aligned. Score:  81
Sequences (10:29) Aligned. Score:  66
Sequences (10:30) Aligned. Score:  83
Sequences (10:31) Aligned. Score:  87
Sequences (10:32) Aligned. Score:  87
Sequences (10:33) Aligned. Score:  82
Sequences (10:34) Aligned. Score:  86
Sequences (10:35) Aligned. Score:  84
Sequences (10:36) Aligned. Score:  80
Sequences (10:37) Aligned. Score:  84
Sequences (10:38) Aligned. Score:  84
Sequences (10:39) Aligned. Score:  81
Sequences (10:40) Aligned. Score:  75
Sequences (10:41) Aligned. Score:  84
Sequences (10:42) Aligned. Score:  86
Sequences (10:43) Aligned. Score:  84
Sequences (10:44) Aligned. Score:  81
Sequences (10:45) Aligned. Score:  83
Sequences (10:46) Aligned. Score:  82
Sequences (11:12) Aligned. Score:  77
Sequences (11:13) Aligned. Score:  79
Sequences (11:14) Aligned. Score:  73
Sequences (11:15) Aligned. Score:  53
Sequences (11:16) Aligned. Score:  76
Sequences (11:17) Aligned. Score:  78
Sequences (11:18) Aligned. Score:  76
Sequences (11:19) Aligned. Score:  75
Sequences (11:20) Aligned. Score:  66
Sequences (11:21) Aligned. Score:  66
Sequences (11:22) Aligned. Score:  70
Sequences (11:23) Aligned. Score:  54
Sequences (11:24) Aligned. Score:  70
Sequences (11:25) Aligned. Score:  81
Sequences (11:26) Aligned. Score:  78
Sequences (11:27) Aligned. Score:  79
Sequences (11:28) Aligned. Score:  70
Sequences (11:29) Aligned. Score:  77
Sequences (11:30) Aligned. Score:  80
Sequences (11:31) Aligned. Score:  76
Sequences (11:32) Aligned. Score:  77
Sequences (11:33) Aligned. Score:  76
Sequences (11:34) Aligned. Score:  79
Sequences (11:35) Aligned. Score:  78
Sequences (11:36) Aligned. Score:  70
Sequences (11:37) Aligned. Score:  78
Sequences (11:38) Aligned. Score:  78
Sequences (11:39) Aligned. Score:  73
Sequences (11:40) Aligned. Score:  71
Sequences (11:41) Aligned. Score:  81
Sequences (11:42) Aligned. Score:  77
Sequences (11:43) Aligned. Score:  78
Sequences (11:44) Aligned. Score:  70
Sequences (11:45) Aligned. Score:  76
Sequences (11:46) Aligned. Score:  75
Sequences (12:13) Aligned. Score:  80
Sequences (12:14) Aligned. Score:  76
Sequences (12:15) Aligned. Score:  53
Sequences (12:16) Aligned. Score:  76
Sequences (12:17) Aligned. Score:  75
Sequences (12:18) Aligned. Score:  75
Sequences (12:19) Aligned. Score:  77
Sequences (12:20) Aligned. Score:  69
Sequences (12:21) Aligned. Score:  69
Sequences (12:22) Aligned. Score:  66
Sequences (12:23) Aligned. Score:  54
Sequences (12:24) Aligned. Score:  74
Sequences (12:25) Aligned. Score:  77
Sequences (12:26) Aligned. Score:  81
Sequences (12:27) Aligned. Score:  82
Sequences (12:28) Aligned. Score:  71
Sequences (12:29) Aligned. Score:  72
Sequences (12:30) Aligned. Score:  74
Sequences (12:31) Aligned. Score:  79
Sequences (12:32) Aligned. Score:  79
Sequences (12:33) Aligned. Score:  77
Sequences (12:34) Aligned. Score:  82
Sequences (12:35) Aligned. Score:  77
Sequences (12:36) Aligned. Score:  74
Sequences (12:37) Aligned. Score:  80
Sequences (12:38) Aligned. Score:  78
Sequences (12:39) Aligned. Score:  72
Sequences (12:40) Aligned. Score:  70
Sequences (12:41) Aligned. Score:  77
Sequences (12:42) Aligned. Score:  76
Sequences (12:43) Aligned. Score:  76
Sequences (12:44) Aligned. Score:  71
Sequences (12:45) Aligned. Score:  72
Sequences (12:46) Aligned. Score:  74
Sequences (13:14) Aligned. Score:  78
Sequences (13:15) Aligned. Score:  54
Sequences (13:16) Aligned. Score:  78
Sequences (13:17) Aligned. Score:  77
Sequences (13:18) Aligned. Score:  74
Sequences (13:19) Aligned. Score:  77
Sequences (13:20) Aligned. Score:  70
Sequences (13:21) Aligned. Score:  70
Sequences (13:22) Aligned. Score:  68
Sequences (13:23) Aligned. Score:  54
Sequences (13:24) Aligned. Score:  74
Sequences (13:25) Aligned. Score:  77
Sequences (13:26) Aligned. Score:  83
Sequences (13:27) Aligned. Score:  82
Sequences (13:28) Aligned. Score:  71
Sequences (13:29) Aligned. Score:  76
Sequences (13:30) Aligned. Score:  74
Sequences (13:31) Aligned. Score:  78
Sequences (13:32) Aligned. Score:  77
Sequences (13:33) Aligned. Score:  77
Sequences (13:34) Aligned. Score:  81
Sequences (13:35) Aligned. Score:  77
Sequences (13:36) Aligned. Score:  72
Sequences (13:37) Aligned. Score:  80
Sequences (13:38) Aligned. Score:  80
Sequences (13:39) Aligned. Score:  74
Sequences (13:40) Aligned. Score:  70
Sequences (13:41) Aligned. Score:  78
Sequences (13:42) Aligned. Score:  80
Sequences (13:43) Aligned. Score:  77
Sequences (13:44) Aligned. Score:  71
Sequences (13:45) Aligned. Score:  74
Sequences (13:46) Aligned. Score:  74
Sequences (14:15) Aligned. Score:  53
Sequences (14:16) Aligned. Score:  75
Sequences (14:17) Aligned. Score:  74
Sequences (14:18) Aligned. Score:  74
Sequences (14:19) Aligned. Score:  74
Sequences (14:20) Aligned. Score:  68
Sequences (14:21) Aligned. Score:  67
Sequences (14:22) Aligned. Score:  69
Sequences (14:23) Aligned. Score:  54
Sequences (14:24) Aligned. Score:  70
Sequences (14:25) Aligned. Score:  73
Sequences (14:26) Aligned. Score:  77
Sequences (14:27) Aligned. Score:  77
Sequences (14:28) Aligned. Score:  73
Sequences (14:29) Aligned. Score:  69
Sequences (14:30) Aligned. Score:  72
Sequences (14:31) Aligned. Score:  75
Sequences (14:32) Aligned. Score:  76
Sequences (14:33) Aligned. Score:  77
Sequences (14:34) Aligned. Score:  77
Sequences (14:35) Aligned. Score:  75
Sequences (14:36) Aligned. Score:  73
Sequences (14:37) Aligned. Score:  76
Sequences (14:38) Aligned. Score:  79
Sequences (14:39) Aligned. Score:  72
Sequences (14:40) Aligned. Score:  66
Sequences (14:41) Aligned. Score:  74
Sequences (14:42) Aligned. Score:  76
Sequences (14:43) Aligned. Score:  78
Sequences (14:44) Aligned. Score:  72
Sequences (14:45) Aligned. Score:  77
Sequences (14:46) Aligned. Score:  74
Sequences (15:16) Aligned. Score:  55
Sequences (15:17) Aligned. Score:  53
Sequences (15:18) Aligned. Score:  54
Sequences (15:19) Aligned. Score:  55
Sequences (15:20) Aligned. Score:  51
Sequences (15:21) Aligned. Score:  51
Sequences (15:22) Aligned. Score:  57
Sequences (15:23) Aligned. Score:  87
Sequences (15:24) Aligned. Score:  53
Sequences (15:25) Aligned. Score:  54
Sequences (15:26) Aligned. Score:  55
Sequences (15:27) Aligned. Score:  55
Sequences (15:28) Aligned. Score:  55
Sequences (15:29) Aligned. Score:  52
Sequences (15:30) Aligned. Score:  54
Sequences (15:31) Aligned. Score:  54
Sequences (15:32) Aligned. Score:  54
Sequences (15:33) Aligned. Score:  51
Sequences (15:34) Aligned. Score:  53
Sequences (15:35) Aligned. Score:  55
Sequences (15:36) Aligned. Score:  53
Sequences (15:37) Aligned. Score:  54
Sequences (15:38) Aligned. Score:  55
Sequences (15:39) Aligned. Score:  53
Sequences (15:40) Aligned. Score:  52
Sequences (15:41) Aligned. Score:  53
Sequences (15:42) Aligned. Score:  55
Sequences (15:43) Aligned. Score:  54
Sequences (15:44) Aligned. Score:  53
Sequences (15:45) Aligned. Score:  53
Sequences (15:46) Aligned. Score:  54
Sequences (16:17) Aligned. Score:  76
Sequences (16:18) Aligned. Score:  75
Sequences (16:19) Aligned. Score:  77
Sequences (16:20) Aligned. Score:  68
Sequences (16:21) Aligned. Score:  68
Sequences (16:22) Aligned. Score:  66
Sequences (16:23) Aligned. Score:  55
Sequences (16:24) Aligned. Score:  69
Sequences (16:25) Aligned. Score:  77
Sequences (16:26) Aligned. Score:  79
Sequences (16:27) Aligned. Score:  80
Sequences (16:28) Aligned. Score:  71
Sequences (16:29) Aligned. Score:  74
Sequences (16:30) Aligned. Score:  76
Sequences (16:31) Aligned. Score:  93
Sequences (16:32) Aligned. Score:  86
Sequences (16:33) Aligned. Score:  74
Sequences (16:34) Aligned. Score:  78
Sequences (16:35) Aligned. Score:  75
Sequences (16:36) Aligned. Score:  71
Sequences (16:37) Aligned. Score:  76
Sequences (16:38) Aligned. Score:  75
Sequences (16:39) Aligned. Score:  70
Sequences (16:40) Aligned. Score:  67
Sequences (16:41) Aligned. Score:  76
Sequences (16:42) Aligned. Score:  77
Sequences (16:43) Aligned. Score:  75
Sequences (16:44) Aligned. Score:  71
Sequences (16:45) Aligned. Score:  73
Sequences (16:46) Aligned. Score:  75
Sequences (17:18) Aligned. Score:  84
Sequences (17:19) Aligned. Score:  79
Sequences (17:20) Aligned. Score:  71
Sequences (17:21) Aligned. Score:  71
Sequences (17:22) Aligned. Score:  68
Sequences (17:23) Aligned. Score:  54
Sequences (17:24) Aligned. Score:  72
Sequences (17:25) Aligned. Score:  74
Sequences (17:26) Aligned. Score:  77
Sequences (17:27) Aligned. Score:  78
Sequences (17:28) Aligned. Score:  70
Sequences (17:29) Aligned. Score:  72
Sequences (17:30) Aligned. Score:  75
Sequences (17:31) Aligned. Score:  77
Sequences (17:32) Aligned. Score:  75
Sequences (17:33) Aligned. Score:  75
Sequences (17:34) Aligned. Score:  75
Sequences (17:35) Aligned. Score:  73
Sequences (17:36) Aligned. Score:  74
Sequences (17:37) Aligned. Score:  73
Sequences (17:38) Aligned. Score:  75
Sequences (17:39) Aligned. Score:  71
Sequences (17:40) Aligned. Score:  67
Sequences (17:41) Aligned. Score:  74
Sequences (17:42) Aligned. Score:  74
Sequences (17:43) Aligned. Score:  75
Sequences (17:44) Aligned. Score:  70
Sequences (17:45) Aligned. Score:  70
Sequences (17:46) Aligned. Score:  75
Sequences (18:19) Aligned. Score:  75
Sequences (18:20) Aligned. Score:  67
Sequences (18:21) Aligned. Score:  67
Sequences (18:22) Aligned. Score:  68
Sequences (18:23) Aligned. Score:  55
Sequences (18:24) Aligned. Score:  70
Sequences (18:25) Aligned. Score:  75
Sequences (18:26) Aligned. Score:  76
Sequences (18:27) Aligned. Score:  76
Sequences (18:28) Aligned. Score:  70
Sequences (18:29) Aligned. Score:  73
Sequences (18:30) Aligned. Score:  74
Sequences (18:31) Aligned. Score:  77
Sequences (18:32) Aligned. Score:  76
Sequences (18:33) Aligned. Score:  75
Sequences (18:34) Aligned. Score:  76
Sequences (18:35) Aligned. Score:  75
Sequences (18:36) Aligned. Score:  70
Sequences (18:37) Aligned. Score:  74
Sequences (18:38) Aligned. Score:  76
Sequences (18:39) Aligned. Score:  72
Sequences (18:40) Aligned. Score:  67
Sequences (18:41) Aligned. Score:  74
Sequences (18:42) Aligned. Score:  74
Sequences (18:43) Aligned. Score:  75
Sequences (18:44) Aligned. Score:  70
Sequences (18:45) Aligned. Score:  70
Sequences (18:46) Aligned. Score:  73
Sequences (19:20) Aligned. Score:  71
Sequences (19:21) Aligned. Score:  71
Sequences (19:22) Aligned. Score:  69
Sequences (19:23) Aligned. Score:  55
Sequences (19:24) Aligned. Score:  71
Sequences (19:25) Aligned. Score:  75
Sequences (19:26) Aligned. Score:  77
Sequences (19:27) Aligned. Score:  78
Sequences (19:28) Aligned. Score:  72
Sequences (19:29) Aligned. Score:  70
Sequences (19:30) Aligned. Score:  74
Sequences (19:31) Aligned. Score:  78
Sequences (19:32) Aligned. Score:  77
Sequences (19:33) Aligned. Score:  74
Sequences (19:34) Aligned. Score:  78
Sequences (19:35) Aligned. Score:  76
Sequences (19:36) Aligned. Score:  71
Sequences (19:37) Aligned. Score:  76
Sequences (19:38) Aligned. Score:  75
Sequences (19:39) Aligned. Score:  73
Sequences (19:40) Aligned. Score:  66
Sequences (19:41) Aligned. Score:  75
Sequences (19:42) Aligned. Score:  75
Sequences (19:43) Aligned. Score:  76
Sequences (19:44) Aligned. Score:  71
Sequences (19:45) Aligned. Score:  75
Sequences (19:46) Aligned. Score:  75
Sequences (20:21) Aligned. Score:  96
Sequences (20:22) Aligned. Score:  65
Sequences (20:23) Aligned. Score:  54
Sequences (20:24) Aligned. Score:  65
Sequences (20:25) Aligned. Score:  69
Sequences (20:26) Aligned. Score:  69
Sequences (20:27) Aligned. Score:  69
Sequences (20:28) Aligned. Score:  70
Sequences (20:29) Aligned. Score:  64
Sequences (20:30) Aligned. Score:  65
Sequences (20:31) Aligned. Score:  69
Sequences (20:32) Aligned. Score:  67
Sequences (20:33) Aligned. Score:  68
Sequences (20:34) Aligned. Score:  69
Sequences (20:35) Aligned. Score:  67
Sequences (20:36) Aligned. Score:  68
Sequences (20:37) Aligned. Score:  69
Sequences (20:38) Aligned. Score:  68
Sequences (20:39) Aligned. Score:  71
Sequences (20:40) Aligned. Score:  63
Sequences (20:41) Aligned. Score:  68
Sequences (20:42) Aligned. Score:  69
Sequences (20:43) Aligned. Score:  69
Sequences (20:44) Aligned. Score:  69
Sequences (20:45) Aligned. Score:  67
Sequences (20:46) Aligned. Score:  67
Sequences (21:22) Aligned. Score:  65
Sequences (21:23) Aligned. Score:  54
Sequences (21:24) Aligned. Score:  65
Sequences (21:25) Aligned. Score:  68
Sequences (21:26) Aligned. Score:  69
Sequences (21:27) Aligned. Score:  69
Sequences (21:28) Aligned. Score:  70
Sequences (21:29) Aligned. Score:  64
Sequences (21:30) Aligned. Score:  65
Sequences (21:31) Aligned. Score:  68
Sequences (21:32) Aligned. Score:  67
Sequences (21:33) Aligned. Score:  68
Sequences (21:34) Aligned. Score:  69
Sequences (21:35) Aligned. Score:  67
Sequences (21:36) Aligned. Score:  68
Sequences (21:37) Aligned. Score:  68
Sequences (21:38) Aligned. Score:  67
Sequences (21:39) Aligned. Score:  70
Sequences (21:40) Aligned. Score:  63
Sequences (21:41) Aligned. Score:  68
Sequences (21:42) Aligned. Score:  69
Sequences (21:43) Aligned. Score:  68
Sequences (21:44) Aligned. Score:  69
Sequences (21:45) Aligned. Score:  66
Sequences (21:46) Aligned. Score:  66
Sequences (22:23) Aligned. Score:  55
Sequences (22:24) Aligned. Score:  73
Sequences (22:25) Aligned. Score:  67
Sequences (22:26) Aligned. Score:  69
Sequences (22:27) Aligned. Score:  69
Sequences (22:28) Aligned. Score:  64
Sequences (22:29) Aligned. Score:  66
Sequences (22:30) Aligned. Score:  68
Sequences (22:31) Aligned. Score:  70
Sequences (22:32) Aligned. Score:  67
Sequences (22:33) Aligned. Score:  70
Sequences (22:34) Aligned. Score:  68
Sequences (22:35) Aligned. Score:  69
Sequences (22:36) Aligned. Score:  67
Sequences (22:37) Aligned. Score:  68
Sequences (22:38) Aligned. Score:  70
Sequences (22:39) Aligned. Score:  67
Sequences (22:40) Aligned. Score:  61
Sequences (22:41) Aligned. Score:  68
Sequences (22:42) Aligned. Score:  67
Sequences (22:43) Aligned. Score:  70
Sequences (22:44) Aligned. Score:  66
Sequences (22:45) Aligned. Score:  65
Sequences (22:46) Aligned. Score:  65
Sequences (23:24) Aligned. Score:  54
Sequences (23:25) Aligned. Score:  54
Sequences (23:26) Aligned. Score:  55
Sequences (23:27) Aligned. Score:  54
Sequences (23:28) Aligned. Score:  54
Sequences (23:29) Aligned. Score:  53
Sequences (23:30) Aligned. Score:  54
Sequences (23:31) Aligned. Score:  56
Sequences (23:32) Aligned. Score:  53
Sequences (23:33) Aligned. Score:  53
Sequences (23:34) Aligned. Score:  55
Sequences (23:35) Aligned. Score:  55
Sequences (23:36) Aligned. Score:  53
Sequences (23:37) Aligned. Score:  54
Sequences (23:38) Aligned. Score:  55
Sequences (23:39) Aligned. Score:  54
Sequences (23:40) Aligned. Score:  52
Sequences (23:41) Aligned. Score:  55
Sequences (23:42) Aligned. Score:  54
Sequences (23:43) Aligned. Score:  55
Sequences (23:44) Aligned. Score:  53
Sequences (23:45) Aligned. Score:  54
Sequences (23:46) Aligned. Score:  55
Sequences (24:25) Aligned. Score:  72
Sequences (24:26) Aligned. Score:  73
Sequences (24:27) Aligned. Score:  74
Sequences (24:28) Aligned. Score:  69
Sequences (24:29) Aligned. Score:  68
Sequences (24:30) Aligned. Score:  68
Sequences (24:31) Aligned. Score:  70
Sequences (24:32) Aligned. Score:  71
Sequences (24:33) Aligned. Score:  70
Sequences (24:34) Aligned. Score:  74
Sequences (24:35) Aligned. Score:  71
Sequences (24:36) Aligned. Score:  67
Sequences (24:37) Aligned. Score:  74
Sequences (24:38) Aligned. Score:  73
Sequences (24:39) Aligned. Score:  67
Sequences (24:40) Aligned. Score:  63
Sequences (24:41) Aligned. Score:  73
Sequences (24:42) Aligned. Score:  72
Sequences (24:43) Aligned. Score:  72
Sequences (24:44) Aligned. Score:  66
Sequences (24:45) Aligned. Score:  70
Sequences (24:46) Aligned. Score:  68
Sequences (25:26) Aligned. Score:  80
Sequences (25:27) Aligned. Score:  80
Sequences (25:28) Aligned. Score:  70
Sequences (25:29) Aligned. Score:  93
Sequences (25:30) Aligned. Score:  80
Sequences (25:31) Aligned. Score:  79
Sequences (25:32) Aligned. Score:  76
Sequences (25:33) Aligned. Score:  74
Sequences (25:34) Aligned. Score:  78
Sequences (25:35) Aligned. Score:  75
Sequences (25:36) Aligned. Score:  73
Sequences (25:37) Aligned. Score:  75
Sequences (25:38) Aligned. Score:  76
Sequences (25:39) Aligned. Score:  72
Sequences (25:40) Aligned. Score:  76
Sequences (25:41) Aligned. Score:  79
Sequences (25:42) Aligned. Score:  76
Sequences (25:43) Aligned. Score:  75
Sequences (25:44) Aligned. Score:  70
Sequences (25:45) Aligned. Score:  71
Sequences (25:46) Aligned. Score:  74
Sequences (26:27) Aligned. Score:  94
Sequences (26:28) Aligned. Score:  71
Sequences (26:29) Aligned. Score:  77
Sequences (26:30) Aligned. Score:  76
Sequences (26:31) Aligned. Score:  81
Sequences (26:32) Aligned. Score:  77
Sequences (26:33) Aligned. Score:  79
Sequences (26:34) Aligned. Score:  85
Sequences (26:35) Aligned. Score:  78
Sequences (26:36) Aligned. Score:  72
Sequences (26:37) Aligned. Score:  83
Sequences (26:38) Aligned. Score:  81
Sequences (26:39) Aligned. Score:  73
Sequences (26:40) Aligned. Score:  70
Sequences (26:41) Aligned. Score:  78
Sequences (26:42) Aligned. Score:  80
Sequences (26:43) Aligned. Score:  80
Sequences (26:44) Aligned. Score:  73
Sequences (26:45) Aligned. Score:  75
Sequences (26:46) Aligned. Score:  76
Sequences (27:28) Aligned. Score:  72
Sequences (27:29) Aligned. Score:  77
Sequences (27:30) Aligned. Score:  76
Sequences (27:31) Aligned. Score:  80
Sequences (27:32) Aligned. Score:  77
Sequences (27:33) Aligned. Score:  80
Sequences (27:34) Aligned. Score:  86
Sequences (27:35) Aligned. Score:  78
Sequences (27:36) Aligned. Score:  72
Sequences (27:37) Aligned. Score:  83
Sequences (27:38) Aligned. Score:  82
Sequences (27:39) Aligned. Score:  73
Sequences (27:40) Aligned. Score:  71
Sequences (27:41) Aligned. Score:  78
Sequences (27:42) Aligned. Score:  79
Sequences (27:43) Aligned. Score:  80
Sequences (27:44) Aligned. Score:  74
Sequences (27:45) Aligned. Score:  76
Sequences (27:46) Aligned. Score:  76
Sequences (28:29) Aligned. Score:  69
Sequences (28:30) Aligned. Score:  69
Sequences (28:31) Aligned. Score:  72
Sequences (28:32) Aligned. Score:  71
Sequences (28:33) Aligned. Score:  74
Sequences (28:34) Aligned. Score:  71
Sequences (28:35) Aligned. Score:  73
Sequences (28:36) Aligned. Score:  78
Sequences (28:37) Aligned. Score:  70
Sequences (28:38) Aligned. Score:  74
Sequences (28:39) Aligned. Score:  79
Sequences (28:40) Aligned. Score:  65
Sequences (28:41) Aligned. Score:  69
Sequences (28:42) Aligned. Score:  71
Sequences (28:43) Aligned. Score:  75
Sequences (28:44) Aligned. Score:  77
Sequences (28:45) Aligned. Score:  70
Sequences (28:46) Aligned. Score:  69
Sequences (29:30) Aligned. Score:  75
Sequences (29:31) Aligned. Score:  75
Sequences (29:32) Aligned. Score:  73
Sequences (29:33) Aligned. Score:  68
Sequences (29:34) Aligned. Score:  74
Sequences (29:35) Aligned. Score:  72
Sequences (29:36) Aligned. Score:  68
Sequences (29:37) Aligned. Score:  74
Sequences (29:38) Aligned. Score:  72
Sequences (29:39) Aligned. Score:  71
Sequences (29:40) Aligned. Score:  75
Sequences (29:41) Aligned. Score:  78
Sequences (29:42) Aligned. Score:  74
Sequences (29:43) Aligned. Score:  71
Sequences (29:44) Aligned. Score:  68
Sequences (29:45) Aligned. Score:  70
Sequences (29:46) Aligned. Score:  72
Sequences (30:31) Aligned. Score:  76
Sequences (30:32) Aligned. Score:  77
Sequences (30:33) Aligned. Score:  73
Sequences (30:34) Aligned. Score:  77
Sequences (30:35) Aligned. Score:  74
Sequences (30:36) Aligned. Score:  71
Sequences (30:37) Aligned. Score:  75
Sequences (30:38) Aligned. Score:  74
Sequences (30:39) Aligned. Score:  70
Sequences (30:40) Aligned. Score:  69
Sequences (30:41) Aligned. Score:  77
Sequences (30:42) Aligned. Score:  74
Sequences (30:43) Aligned. Score:  75
Sequences (30:44) Aligned. Score:  70
Sequences (30:45) Aligned. Score:  72
Sequences (30:46) Aligned. Score:  74
Sequences (31:32) Aligned. Score:  85
Sequences (31:33) Aligned. Score:  75
Sequences (31:34) Aligned. Score:  80
Sequences (31:35) Aligned. Score:  75
Sequences (31:36) Aligned. Score:  71
Sequences (31:37) Aligned. Score:  80
Sequences (31:38) Aligned. Score:  76
Sequences (31:39) Aligned. Score:  71
Sequences (31:40) Aligned. Score:  68
Sequences (31:41) Aligned. Score:  77
Sequences (31:42) Aligned. Score:  80
Sequences (31:43) Aligned. Score:  76
Sequences (31:44) Aligned. Score:  71
Sequences (31:45) Aligned. Score:  76
Sequences (31:46) Aligned. Score:  77
Sequences (32:33) Aligned. Score:  76
Sequences (32:34) Aligned. Score:  79
Sequences (32:35) Aligned. Score:  74
Sequences (32:36) Aligned. Score:  72
Sequences (32:37) Aligned. Score:  76
Sequences (32:38) Aligned. Score:  75
Sequences (32:39) Aligned. Score:  70
Sequences (32:40) Aligned. Score:  68
Sequences (32:41) Aligned. Score:  77
Sequences (32:42) Aligned. Score:  77
Sequences (32:43) Aligned. Score:  75
Sequences (32:44) Aligned. Score:  70
Sequences (32:45) Aligned. Score:  74
Sequences (32:46) Aligned. Score:  75
Sequences (33:34) Aligned. Score:  79
Sequences (33:35) Aligned. Score:  79
Sequences (33:36) Aligned. Score:  72
Sequences (33:37) Aligned. Score:  78
Sequences (33:38) Aligned. Score:  82
Sequences (33:39) Aligned. Score:  74
Sequences (33:40) Aligned. Score:  68
Sequences (33:41) Aligned. Score:  75
Sequences (33:42) Aligned. Score:  76
Sequences (33:43) Aligned. Score:  79
Sequences (33:44) Aligned. Score:  72
Sequences (33:45) Aligned. Score:  78
Sequences (33:46) Aligned. Score:  74
Sequences (34:35) Aligned. Score:  78
Sequences (34:36) Aligned. Score:  73
Sequences (34:37) Aligned. Score:  91
Sequences (34:38) Aligned. Score:  82
Sequences (34:39) Aligned. Score:  73
Sequences (34:40) Aligned. Score:  71
Sequences (34:41) Aligned. Score:  77
Sequences (34:42) Aligned. Score:  79
Sequences (34:43) Aligned. Score:  79
Sequences (34:44) Aligned. Score:  72
Sequences (34:45) Aligned. Score:  73
Sequences (34:46) Aligned. Score:  76
Sequences (35:36) Aligned. Score:  72
Sequences (35:37) Aligned. Score:  77
Sequences (35:38) Aligned. Score:  90
Sequences (35:39) Aligned. Score:  74
Sequences (35:40) Aligned. Score:  68
Sequences (35:41) Aligned. Score:  76
Sequences (35:42) Aligned. Score:  76
Sequences (35:43) Aligned. Score:  80
Sequences (35:44) Aligned. Score:  72
Sequences (35:45) Aligned. Score:  75
Sequences (35:46) Aligned. Score:  74
Sequences (36:37) Aligned. Score:  71
Sequences (36:38) Aligned. Score:  73
Sequences (36:39) Aligned. Score:  86
Sequences (36:40) Aligned. Score:  65
Sequences (36:41) Aligned. Score:  71
Sequences (36:42) Aligned. Score:  72
Sequences (36:43) Aligned. Score:  74
Sequences (36:44) Aligned. Score:  77
Sequences (36:45) Aligned. Score:  69
Sequences (36:46) Aligned. Score:  70
Sequences (37:38) Aligned. Score:  80
Sequences (37:39) Aligned. Score:  71
Sequences (37:40) Aligned. Score:  70
Sequences (37:41) Aligned. Score:  77
Sequences (37:42) Aligned. Score:  78
Sequences (37:43) Aligned. Score:  77
Sequences (37:44) Aligned. Score:  71
Sequences (37:45) Aligned. Score:  74
Sequences (37:46) Aligned. Score:  75
Sequences (38:39) Aligned. Score:  73
Sequences (38:40) Aligned. Score:  69
Sequences (38:41) Aligned. Score:  77
Sequences (38:42) Aligned. Score:  77
Sequences (38:43) Aligned. Score:  82
Sequences (38:44) Aligned. Score:  73
Sequences (38:45) Aligned. Score:  79
Sequences (38:46) Aligned. Score:  76
Sequences (39:40) Aligned. Score:  66
Sequences (39:41) Aligned. Score:  71
Sequences (39:42) Aligned. Score:  73
Sequences (39:43) Aligned. Score:  74
Sequences (39:44) Aligned. Score:  77
Sequences (39:45) Aligned. Score:  70
Sequences (39:46) Aligned. Score:  70
Sequences (40:41) Aligned. Score:  71
Sequences (40:42) Aligned. Score:  69
Sequences (40:43) Aligned. Score:  69
Sequences (40:44) Aligned. Score:  66
Sequences (40:45) Aligned. Score:  69
Sequences (40:46) Aligned. Score:  68
Sequences (41:42) Aligned. Score:  75
Sequences (41:43) Aligned. Score:  75
Sequences (41:44) Aligned. Score:  69
Sequences (41:45) Aligned. Score:  73
Sequences (41:46) Aligned. Score:  74
Sequences (42:43) Aligned. Score:  76
Sequences (42:44) Aligned. Score:  73
Sequences (42:45) Aligned. Score:  72
Sequences (42:46) Aligned. Score:  76
Sequences (43:44) Aligned. Score:  72
Sequences (43:45) Aligned. Score:  77
Sequences (43:46) Aligned. Score:  74
Sequences (44:45) Aligned. Score:  70
Sequences (44:46) Aligned. Score:  71
Sequences (45:46) Aligned. Score:  71
Guide tree file created:   [SupplementalDataSet3.dnd]

There are 45 groups
Start of Multiple Alignment

Aligning...
Group 1: Sequences:   2      Score:10946
Group 2: Sequences:   3      Score:10601
Group 3: Sequences:   2      Score:10356
Group 4: Sequences:   5      Score:10070
Group 5: Sequences:   2      Score:10770
Group 6: Sequences:   2      Score:9019
Group 7: Sequences:   3      Score:8748
Group 8: Sequences:   5      Score:9141
Group 9: Sequences:   2      Score:10113
Group 10: Sequences:   7      Score:9318
Group 11: Sequences:  12      Score:9191
Group 12: Sequences:   2      Score:11318
Group 13: Sequences:   2      Score:11246
Group 14: Sequences:   4      Score:10665
Group 15: Sequences:   5      Score:10499
Group 16: Sequences:   6      Score:10431
Group 17: Sequences:  18      Score:9453
Group 18: Sequences:   2      Score:11085
Group 19: Sequences:   2      Score:7780
Group 20: Sequences:   3      Score:9426
Group 21: Sequences:   5      Score:9533
Group 22: Sequences:   2      Score:10454
Group 23: Sequences:   7      Score:9354
Group 24: Sequences:   8      Score:9656
Group 25: Sequences:  26      Score:8985
Group 26: Sequences:   2      Score:10647
Group 27: Sequences:   2      Score:10698
Group 28: Sequences:   4      Score:10129
Group 29: Sequences:   5      Score:10083
Group 30: Sequences:   2      Score:9961
Group 31: Sequences:   7      Score:9873
Group 32: Sequences:  33      Score:9474
Group 33: Sequences:  34      Score:9591
Group 34: Sequences:   2      Score:10527
Group 35: Sequences:   3      Score:10069
Group 36: Sequences:   4      Score:10036
Group 37: Sequences:  38      Score:9217
Group 38: Sequences:   2      Score:9762
Group 39: Sequences:  40      Score:9264
Group 40: Sequences:   2      Score:10603
Group 41: Sequences:   3      Score:9901
Group 42: Sequences:  43      Score:8959
Group 43: Sequences:   2      Score:10365
Group 44: Sequences:  45      Score:8312
Group 45: Sequences:  46      Score:7078
Alignment Score 2311246


WARNING: Truncating sequence names to 10 characters for PHYLIP output.


PHYLIP-Alignment file created   [SupplementalDataSet3-aligned.fasta]
```
Now I can get the new file named "SupplementalDataSet3_aligned.fasta".

To get the output file in the fasta format, you can just edit the -OUTPUT=FASTA instead of -OUTPUT=PHYLIP, and I saved as "SupplementalDataSet3-aligned2.fasta".
```
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate clustalw2

(clustalw2) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw2 -ALIGN -INFILE=SupplementalDataSet3.fasta -OUTFILE=SupplementalDataSet3-aligned2.fasta -OUTPUT=FASTA
```


# Orthofinder
## Install the orthofinder
I used conda for installing the orthofinder:
```
conda install -c bioconda orthofinder
```

And I have the orthofinder installed:
```
Collecting package metadata (current_repodata.json): done
Solving environment: done


==> WARNING: A newer version of conda exists. <==
  current version: 4.8.3
  latest version: 4.10.1

Please update conda by running

    $ conda update -n base -c defaults conda



# All requested packages already installed.
```

To check if it was installed correctly:
```
orthofinder -h
```

And the output was:
```
OrthoFinder version 2.2.7 Copyright (C) 2014 David Emms

SIMPLE USAGE:
Run full OrthoFinder analysis on FASTA format proteomes in <dir>
  orthofinder [options] -f <dir>

Add new species in <dir1> to previous run in <dir2> and run new analysis
  orthofinder [options] -f <dir1> -b <dir2>

OPTIONS:
 -t <int>          Number of parallel sequence search threads [Default = 16]
 -a <int>          Number of parallel analysis threads [Default = 1]
 -M <txt>          Method for gene tree inference. Options 'dendroblast' & 'msa'
                   [Default = dendroblast]
 -S <txt>          Sequence search program [Default = blast]
                   Options: blast, mmseqs, blast_gz, diamond
 -A <txt>          MSA program, requires '-M msa' [Default = mafft]
                   Options: muscle, mafft
 -T <txt>          Tree inference method, requires '-M msa' [Default = fasttree]
                   Options: iqtree, raxml-ng, fasttree, raxml
 -s <file>         User-specified rooted species tree
 -I <int>          MCL inflation parameter [Default = 1.5]
 -x <file>         Info for outputting results in OrthoXML format
 -p <dir>          Write the temporary pickle files to <dir>
 -1                Only perform one-way sequence search 
 -n <txt>          Name to append to the results directory
 -h                Print this help text

WORKFLOW STOPPING OPTIONS:
 -op               Stop after preparing input files for BLAST
 -og               Stop after inferring orthogroups
 -os               Stop after writing sequence files for orthogroups
                   (requires '-M msa')
 -oa               Stop after inferring alignments for orthogroups
                   (requires '-M msa')
 -ot               Stop after inferring gene trees for orthogroups 

WORKFLOW RESTART COMMANDS:
 -b  <dir>         Start OrthoFinder from pre-computed BLAST results in <dir>
 -fg <dir>         Start OrthoFinder from pre-computed orthogroups in <dir>
 -ft <dir>         Start OrthoFinder from pre-computed gene trees in <dir>

LICENSE:
 Distributed under the GNU General Public License (GPLv3). See License.md

CITATION:
 When publishing work that uses OrthoFinder please cite:
 Emms D.M. & Kelly S. (2015), Genome Biology 16:157

 If you use the species tree in your work then please also cite:
 Emms D.M. & Kelly S. (2017), MBE 34(12): 3267-3278
 Emms D.M. & Kelly S. (2018), bioRxiv https://doi.org/10.1101/267914

```
So it seems like orthofinder is installed well.

## Run the orthofinder
And then, I run the orthofinder using: 
```
soyoungjung@Soyoungs-MacBook-Pro Bot563 % orthofinder -f SupplementalDataSet3
```

But then, this error massage came out: 
```
OrthoFinder version 2.2.7 Copyright (C) 2014 David Emms

2021-04-22 00:33:37 : Starting OrthoFinder
16 thread(s) for highly parallel tasks (BLAST searches etc.)
1 thread(s) for OrthoFinder algorithm

Checking required programs are installed
----------------------------------------
Test can run "makeblastdb -help" - ok
Test can run "blastp -help" - ok
Test can run "mcl -h" - ok
Test can run "fastme -i /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/SimpleTest.phy -o /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/SimpleTest.tre" - ok
ERROR: At least two species are required
ERROR: An error occurred, please review error messages for more information.
```
I think this is because I have all the amino acid sequences from all the different species in one fasta file.

So I made different fasta files based on the plant species in the same folder (SupplementalDataSet3)
```
(base) soyoungjung@Soyoungs-MacBook-Pro SupplementalDataSet3 % touch Oriza_sativa.fasta
(base) soyoungjung@Soyoungs-MacBook-Pro SupplementalDataSet3 % open Oriza_sativa.fasta 
(base) soyoungjung@Soyoungs-MacBook-Pro SupplementalDataSet3 % touch Mycobacterium_tuberculosis.fasta
(base) soyoungjung@Soyoungs-MacBook-Pro SupplementalDataSet3 % open Mycobacterium_tuberculosis.fasta 
(base) soyoungjung@Soyoungs-MacBook-Pro SupplementalDataSet3 % touch Arabidopsis_thaliana.fasta
```
and then run the orthofinder again with ```orthofinder -f SupplementalDataSet3```

Output was like:
```
OrthoFinder version 2.2.7 Copyright (C) 2014 David Emms

2021-04-22 09:33:50 : Starting OrthoFinder
16 thread(s) for highly parallel tasks (BLAST searches etc.)
1 thread(s) for OrthoFinder algorithm

Checking required programs are installed
----------------------------------------
Test can run "makeblastdb -help" - ok
Test can run "blastp -help" - ok
Test can run "mcl -h" - ok
Test can run "fastme -i /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/SimpleTest.phy -o /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/SimpleTest.tre" - ok

Dividing up work for BLAST for parallel processing
--------------------------------------------------
2021-04-22 09:33:51 : Creating Blast database 1 of 17
2021-04-22 09:33:51 : Creating Blast database 2 of 17
2021-04-22 09:33:51 : Creating Blast database 3 of 17
2021-04-22 09:33:51 : Creating Blast database 4 of 17
2021-04-22 09:33:51 : Creating Blast database 5 of 17
2021-04-22 09:33:51 : Creating Blast database 6 of 17
2021-04-22 09:33:52 : Creating Blast database 7 of 17
2021-04-22 09:33:52 : Creating Blast database 8 of 17
2021-04-22 09:33:52 : Creating Blast database 9 of 17
2021-04-22 09:33:52 : Creating Blast database 10 of 17
2021-04-22 09:33:52 : Creating Blast database 11 of 17
2021-04-22 09:33:53 : Creating Blast database 12 of 17
2021-04-22 09:33:53 : Creating Blast database 13 of 17
2021-04-22 09:33:53 : Creating Blast database 14 of 17
2021-04-22 09:33:53 : Creating Blast database 15 of 17
2021-04-22 09:33:53 : Creating Blast database 16 of 17
2021-04-22 09:33:54 : Creating Blast database 17 of 17

Running BLAST all-versus-all
----------------------------
Using 16 thread(s)
2021-04-22 09:33:54 : This may take some time....
2021-04-22 09:33:54 : Done 0 of 289
2021-04-22 09:33:59 : Done 100 of 289
2021-04-22 09:34:04 : Done 200 of 289
2021-04-22 09:34:08 : Done all-versus-all sequence search

Running OrthoFinder algorithm
-----------------------------
2021-04-22 09:34:08 : Initial processing of each species
2021-04-22 09:34:08 : Initial processing of species 0 complete
2021-04-22 09:34:09 : Initial processing of species 1 complete
2021-04-22 09:34:09 : Initial processing of species 2 complete
WARNING: Too few hits between species 3 and species 3 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 3 and species 6 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 3 and species 8 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 3 and species 11 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 3 and species 16 to normalise the scores, these hits will be ignored
2021-04-22 09:34:09 : Initial processing of species 3 complete
2021-04-22 09:34:09 : Initial processing of species 4 complete
2021-04-22 09:34:09 : Initial processing of species 5 complete
WARNING: Too few hits between species 6 and species 3 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 6 and species 6 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 6 and species 8 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 6 and species 11 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 6 and species 16 to normalise the scores, these hits will be ignored
2021-04-22 09:34:09 : Initial processing of species 6 complete
2021-04-22 09:34:09 : Initial processing of species 7 complete
WARNING: Too few hits between species 8 and species 3 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 8 and species 6 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 8 and species 8 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 8 and species 11 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 8 and species 16 to normalise the scores, these hits will be ignored
2021-04-22 09:34:09 : Initial processing of species 8 complete
2021-04-22 09:34:09 : Initial processing of species 9 complete
2021-04-22 09:34:09 : Initial processing of species 10 complete
WARNING: Too few hits between species 11 and species 3 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 11 and species 6 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 11 and species 8 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 11 and species 11 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 11 and species 16 to normalise the scores, these hits will be ignored
2021-04-22 09:34:09 : Initial processing of species 11 complete
2021-04-22 09:34:09 : Initial processing of species 12 complete
2021-04-22 09:34:09 : Initial processing of species 13 complete
2021-04-22 09:34:09 : Initial processing of species 14 complete
2021-04-22 09:34:09 : Initial processing of species 15 complete
WARNING: Too few hits between species 16 and species 3 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 16 and species 6 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 16 and species 8 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 16 and species 11 to normalise the scores, these hits will be ignored
WARNING: Too few hits between species 16 and species 16 to normalise the scores, these hits will be ignored
2021-04-22 09:34:09 : Initial processing of species 16 complete
2021-04-22 09:34:14 : Connected putatitive homologs
2021-04-22 09:34:14 : Written final scores for species 0 to graph file
2021-04-22 09:34:14 : Written final scores for species 1 to graph file
2021-04-22 09:34:15 : Written final scores for species 2 to graph file
2021-04-22 09:34:15 : Written final scores for species 3 to graph file
2021-04-22 09:34:15 : Written final scores for species 4 to graph file
2021-04-22 09:34:15 : Written final scores for species 5 to graph file
2021-04-22 09:34:15 : Written final scores for species 6 to graph file
2021-04-22 09:34:15 : Written final scores for species 7 to graph file
2021-04-22 09:34:15 : Written final scores for species 8 to graph file
2021-04-22 09:34:15 : Written final scores for species 9 to graph file
2021-04-22 09:34:15 : Written final scores for species 10 to graph file
2021-04-22 09:34:15 : Written final scores for species 11 to graph file
2021-04-22 09:34:15 : Written final scores for species 12 to graph file
2021-04-22 09:34:15 : Written final scores for species 13 to graph file
2021-04-22 09:34:15 : Written final scores for species 14 to graph file
2021-04-22 09:34:15 : Written final scores for species 15 to graph file
2021-04-22 09:34:15 : Written final scores for species 16 to graph file
2021-04-22 09:34:15 : Ran MCL

Writing orthogroups to file
---------------------------
Orthogroups have been written to tab-delimited files:
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups.csv
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups.txt (OrthoMCL format)
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups_UnassignedGenes.csv
2021-04-22 09:34:15 : Done orthogroups

Analysing Orthogroups
=====================

Calculating gene distances
--------------------------
2021-04-22 09:34:18 : Done
Using fallback species tree inference method

Inferring gene and species trees
--------------------------------
2021-04-22 09:34:20 : Done 0 of 2

Best outgroup(s) for species tree
---------------------------------
2021-04-22 09:34:21 : Starting STRIDE
2021-04-22 09:34:21 : Done STRIDE
Observed 0 well-supported, non-terminal duplications. 0 support the best roots and 0 contradict them.
Best outgroups for species tree:
  Chlamydomonas_reinhardtii
  Volvox_carteri
  Spinacia_oleracea
  Solanum_lycopersicum
  Selaginella_moellendorffii
  Amborella_trichopoda
  Selaginella_moellendorffii, Volvox_carteri, Amborella_trichopoda, Chlamydomonas_reinhardtii, Marchantia_polymorpha, Mycobacterium_tuberculosis
  Selaginella_moellendorffii, Sorghum_bicolor, Volvox_carteri, Amborella_trichopoda, Chlamydomonas_reinhardtii, Marchantia_polymorpha, Oriza_sativa, Mycobacterium_tuberculosis
  Mycobacterium_tuberculosis, Chlamydomonas_reinhardtii, Volvox_carteri
  Sorghum_bicolor
  Oriza_sativa
  Arabidopsis_thaliana, Gossypium_raimondii, Brassica_rapa, Theobroma_cacao, Cucumis_sativus
  Mycobacterium_tuberculosis
  Theobroma_cacao
  Cucumis_sativus
  Brassica_rapa
  Arabidopsis_thaliana
  Medicago_truncatula
  Selaginella_moellendorffii, Mycobacterium_tuberculosis, Chlamydomonas_reinhardtii, Marchantia_polymorpha, Volvox_carteri
  Mycobacterium_tuberculosis, Chlamydomonas_reinhardtii, Marchantia_polymorpha, Volvox_carteri
  Arabidopsis_thaliana, Gossypium_raimondii, Brassica_rapa, Theobroma_cacao
  Populus_trichocarpa, Solanum_lycopersicum, Theobroma_cacao, Arabidopsis_thaliana, Brassica_rapa, Gossypium_raimondii, Cucumis_sativus, Medicago_truncatula
  Gossypium_raimondii, Theobroma_cacao
  Populus_trichocarpa
  Oriza_sativa, Sorghum_bicolor
  Arabidopsis_thaliana, Brassica_rapa
  Gossypium_raimondii
  Populus_trichocarpa, Medicago_truncatula
  Chlamydomonas_reinhardtii, Volvox_carteri
  Marchantia_polymorpha
  Populus_trichocarpa, Solanum_lycopersicum, Medicago_truncatula


Multiple potential species tree roots were identified, only one will be analyed.
================================================================================

Reconciling gene trees and species tree
---------------------------------------
Outgroup: Chlamydomonas_reinhardtii
2021-04-22 09:34:21 : Starting Recon and orthologues
2021-04-22 09:34:21 : Starting OF Orthologues
2021-04-22 09:34:21 : Done 0 of 1
2021-04-22 09:34:21 : Done OF Orthologues
2021-04-22 09:34:21 : Done Recon

Writing results files
=====================
2021-04-22 09:34:21 : Done orthologues
Orthogroups have been written to tab-delimited files:
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups.csv
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups.txt (OrthoMCL format)
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthogroups_UnassignedGenes.csv

Gene trees:
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthologues_Apr22/Gene_Trees/

Rooted species tree:
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthologues_Apr22/SpeciesTree_rooted.txt

Species-by-species orthologues:
   /Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthologues_Apr22/Orthologues/

Orthogroup statistics:
   Statistics_PerSpecies.csv   Statistics_Overall.csv   Orthogroups_SpeciesOverlaps.csv

OrthoFinder assigned 45 genes (97.8% of total) to 1 orthogroups. Fifty percent of all genes were in orthogroups with 45 or more genes (G50 was 45) and were contained in the largest 1 orthogroups (O50 was 1). There were 1 orthogroups with all species present and 0 of these consisted entirely of single-copy genes.

CITATION:
 When publishing work that uses OrthoFinder please cite:
 Emms D.M. & Kelly S. (2015), Genome Biology 16:157

 If you use the species tree in your work then please also cite:
 Emms D.M. & Kelly S. (2017), MBE 34(12): 3267-3278
 Emms D.M. & Kelly S. (2018), bioRxiv https://doi.org/10.1101/267914
```

To see the result, I run the R command:
```
library(ape)
tree = read.tree(file="/Users/soyoungjung/Documents/Bot563/Bot563/SupplementalDataSet3/Results_Apr22_3/Orthologues_Apr22/Gene_Trees/OG0000000_tree.txt")
plot(tree)
```

Within the 46 genes that I run the orthofinder, 45 genes were grouped but 1 gene of "Theobroma_cacao_Thecc1EG001069t1".

## Running the ClustalW with the genes assigned as a same orthogroup

Made a new fasta file (grouped_genes.fasta) containing the grouped 45 genes out of 46 genes, based on the Orthofinder result:
```
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % touch grouped_genes.fasta     
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % open grouped_genes.fasta
```

And then I rerun the ClustalW to align those 45 genes:
```
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % conda activate clustalw2
(clustalw2) soyoungjung@Soyoungs-MacBook-Pro Bot563 % clustalw2 -ALIGN -INFILE=grouped_genes.fasta -OUTFILE=grouped_genes_aligned.fasta -OUTPUT=FASTA
```

# RAxML-ng
## Install the raxml-ng
I downloaded ```Download 64-bit OSX/macOS binary``` from here (https://github.com/amkozlov/raxml-ng).
I put the raxml-ng on my 'software' folder
```
(base) soyoungjung@Soyoungs-MacBook-Pro ~ % cd Documents/software 
(base) soyoungjung@Soyoungs-MacBook-Pro software % ls
clustalw2	raxml-ng_v1
```

Check if it's installed with the command:
```
(base) soyoungjung@Soyoungs-MacBook-Pro raxml-ng_v1 % ./raxml-ng -v
```

And then the output was:
```
RAxML-NG v. 1.0.2 released on 22.02.2021 by The Exelixis Lab.
Developed by: Alexey M. Kozlov and Alexandros Stamatakis.
Contributors: Diego Darriba, Tomas Flouri, Benoit Morel, Sarah Lutteropp, Ben Bettisworth.
Latest version: https://github.com/amkozlov/raxml-ng
Questions/problems/suggestions? Please visit: https://groups.google.com/forum/#!forum/raxml

System: Intel(R) Core(TM) i5-8257U CPU @ 1.40GHz, 4 cores, 8 GB RAM
```
So it seems like raxml was installed well.

## Run the RAxML-ng
I copied my aligned data set into the same folder ```software/raxml-ng_v1 folder```
```
(base) soyoungjung@Soyoungs-MacBook-Pro raxml-ng_v1 % cp ~/Documents/Bot563/Bot563/grouped_genes_aligned.fasta .
```
## Model Test using ModelTest-NG
There are different models in RAxML and it is important to use best model for my data set. So I used Modeltest-ng to figure out which model would be suitable for my data set.

### Install ModelTest using git
1. I downloaded by cloning this repository ``` git clone https://github.com/ddarriba/modeltest ``` to my Bot563 folder.

2. Install the dependencies. You can simply run (for mac):
First make sure homebrew (https://brew.sh/) is installed. Try ```brew```.
I had homebrew installed so I got this output:
```
Example usage:
  brew search [TEXT|/REGEX/]
  brew info [FORMULA...]
  brew install FORMULA...
  brew update
  brew upgrade [FORMULA...]
  brew uninstall FORMULA...
  brew list [FORMULA...]

Troubleshooting:
  brew config
  brew doctor
  brew install --verbose --debug FORMULA

Contributing:
  brew create [URL [--no-fetch]]
  brew edit [FORMULA...]

Further help:
  brew commands
  brew help [COMMAND]
  man brew
  https://docs.brew.sh
```

3. Get dependencies using brew:
```brew install flex bison```
It took a little like 3-4ish mins and the output was:
```
Updating Homebrew...
==> Homebrew is run entirely by unpaid volunteers. Please consider donating:
  https://github.com/Homebrew/brew#donations
==> Auto-updated Homebrew!
Updated 1 tap (homebrew/core).
==> New Formulae
archey4                    leaf-proxy                 python-tabulate
as-tree                    lefthook                   python-tk@3.9
bas55                      libpipeline                qt-libiodbc
brook                      libunwind                  qt-mariadb
cadence-workflow           linux-pam                  qt-mysql
clusterctl                 llvm@11                    qt-percona-server
conftest                   lttng-ust                  qt-postgresql
crackpkcs                  lychee                     qt-unixodbc
crispy-doom                macchina                   rdkit
csvtk                      mapcidr                    revive
datalad                    marcli                     rosa-cli
delve                      minisat                    rtl_433
djl-serving                moto                       saml2aws
dory                       mr2                        seqkit
dua-cli                    multitime                  six
enkits                     mx                         smu
enzyme                     name-that-hash             snowpack
epr                        net-tools                  spaceship
fabric-installer           numactl                    sqlancer
geph4                      obfs4proxy                 stp
ghc@9                      open-adventure             systemd
glibc                      openmama                   threemux
gnupg@2.2                  openmodelica               timg
go-boring                  oras                       tomcat@9
go@1.15                    orgalorg                   tz
gopass-jsonapi             organize-tool              virtualenv
haruhi-dl                  pandoc-plot                waffle
haskell-language-server    pcalc                      webhook
iconsur                    pcp                        wllvm
influxdb@1                 phpbrew                    xplr
kertish-dfs                projectm                   xray
kickstart                  pure                       yubikey-agent
klee                       pyqt-3d                    zinit
kotlin-language-server     pyqt-builder               zlib-ng
kubergrunt                 pyqt-networkauth           zsh-vi-mode
latino                     pyside@2
==> Updated Formulae
Updated 2885 formulae.
==> Renamed Formulae
fcct -> butane
ht-rust -> xh
kde-extra-cmake-modules -> extra-cmake-modules
kde-karchive -> karchive
kde-kdoctools -> kdoctools
kde-ki18n -> ki18n
kde-threadweaver -> threadweaver
libsasl2 -> cyrus-sasl
minizip2 -> minizip-ng
pyqt5 -> pyqt@5
qt5 -> qt@5
==> Deleted Formulae
atlassian-cli              avian                      geant4

==> Downloading https://ghcr.io/v2/homebrew/core/flex/manifests/2.6.4_2
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/flex/blobs/sha256:e563a7a42acef
==> Downloading from https://pkg-containers-az.githubusercontent.com/ghcr1/blobs
######################################################################## 100.0%
==> Pouring flex--2.6.4_2.catalina.bottle.tar.gz
==> Caveats
flex is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have flex first in your PATH, run:
  echo 'export PATH="/usr/local/opt/flex/bin:$PATH"' >> ~/.zshrc

For compilers to find flex you may need to set:
  export LDFLAGS="-L/usr/local/opt/flex/lib"
  export CPPFLAGS="-I/usr/local/opt/flex/include"

==> Summary
🍺  /usr/local/Cellar/flex/2.6.4_2: 46 files, 1.5MB
==> `brew cleanup` has not been run in 30 days, running now...
Removing: /Users/soyoungjung/Library/Caches/Homebrew/openssl@1.1--1.1.1i.catalina.bottle.tar.gz... (5.4MB)
Removing: /Users/soyoungjung/Library/Logs/Homebrew/wget... (64B)
Removing: /Users/soyoungjung/Library/Logs/Homebrew/libidn2... (64B)
Removing: /Users/soyoungjung/Library/Logs/Homebrew/libunistring... (64B)
Removing: /Users/soyoungjung/Library/Logs/Homebrew/gettext... (64B)
Removing: /Users/soyoungjung/Library/Logs/Homebrew/openssl@1.1... (64B)
Pruned 0 symbolic links and 2 directories from /usr/local
==> Downloading https://ghcr.io/v2/homebrew/core/bison/manifests/3.7.6-1
######################################################################## 100.0%
==> Downloading https://ghcr.io/v2/homebrew/core/bison/blobs/sha256:2276ffa48c69
==> Downloading from https://pkg-containers-az.githubusercontent.com/ghcr1/blobs
######################################################################## 100.0%
==> Pouring bison--3.7.6.catalina.bottle.1.tar.gz
==> Caveats
bison is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have bison first in your PATH, run:
  echo 'export PATH="/usr/local/opt/bison/bin:$PATH"' >> ~/.zshrc

For compilers to find bison you may need to set:
  export LDFLAGS="-L/usr/local/opt/bison/lib"

==> Summary
🍺  /usr/local/Cellar/bison/3.7.6: 94 files, 3.3MB
==> Caveats
==> flex
flex is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have flex first in your PATH, run:
  echo 'export PATH="/usr/local/opt/flex/bin:$PATH"' >> ~/.zshrc

For compilers to find flex you may need to set:
  export LDFLAGS="-L/usr/local/opt/flex/lib"
  export CPPFLAGS="-I/usr/local/opt/flex/include"

==> bison
bison is keg-only, which means it was not symlinked into /usr/local,
because macOS already provides this software and installing another version in
parallel can cause all kinds of trouble.

If you need to have bison first in your PATH, run:
  echo 'export PATH="/usr/local/opt/bison/bin:$PATH"' >> ~/.zshrc

For compilers to find bison you may need to set:
  export LDFLAGS="-L/usr/local/opt/bison/lib"
  ```
  
4. build Need to install cmake if you don't have it: https://cmake.org/download/


For mac download (macOS 10.13 or later): ```cmake-3.20.1-macos-universal.tar.gz```

- untar:
```tar -xvzf cmake-3.20.1-macos-universal.tar.gz```

- in modeltest folder make build folder and go to build
```mkdir build && cd build```

- call cmake from wherever it was downloaded
```(base) soyoungjung@Soyoungs-MacBook-Pro build % /Users/soyoungjung/Documents/Bot563/cmake-3.20.1-macos-universal/CMake.app/Contents/bin/cmake .. ```

- Now make
```make```

- Result: Linking CXX executable. Modeltest-ng should be in bin folder within /Users/soyoungjung/Documents/Bot563/Bot563/modeltest/bin
 folder
```
[100%] Linking CXX executable ../../bin/modeltest-ng
[100%] Built target modeltest_module
```

### Run the modeltest-ng
Using my aligned data ```/Users/soyoungjung/Documents/Bot563/Bot563/grouped_genes_aligned.fasta```, which is made up of 45 amino acid seqeunces, I run:
```
(base) soyoungjung@Soyoungs-MacBook-Pro Bot563 % /Users/soyoungjung/Documents/Bot563/Bot563/modeltest/bin/modeltest-ng -i grouped_genes_aligned.fasta -t ml -d aa -p 2 
```
It took a while for like 1.5 hours. And the result was:
```
Summary:

Partition 1/1:
                         Model         Score        Weight
----------------------------------------------------------
       BIC              JTT+G4    33501.7172        0.8903
       AIC              JTT+G4    33112.6144        0.8820
      AICc              JTT+G4    33141.6144        0.8859

Execution results written to grouped_genes_aligned.fasta.out
Starting tree written to grouped_genes_aligned.fasta.tree
```
So JTT+G4 model was best fitted with my data set.

## Run the RAxML using JTT+G4 model
### Run the RAxML-ng
I copied my alligned data set into the same folder (software/raxml-ng_v1 folder)
```
(base) soyoungjung@Soyoungs-MacBook-Pro raxml-ng_v1 % cp ~/Documents/Bot563/Bot563/grouped_genes_aligned.fasta .
```
### Verify the format and data consistency of the input files
I chose the model JTT+G4 as my data set and I checked the format of input data using:
```
(base) soyoungjung@Soyoungs-MacBook-Pro raxml-ng_v1 % ./raxml-ng --check --msa grouped_genes_aligned.fasta --model JTT+G4
```
And the result was:
```
Alignment can be successfully read by RAxML-NG.
```
So it seems like the input data can be read by RAxML-NG.
- But when I tried to check the alignment file with output=phylip, it said that ```ERROR: Alignment check failed (see details above)!```. So make sure the input alignment file was output=fasta file.

### Inferring ML trees

```
(base) soyoungjung@Soyoungs-MacBook-Pro raxml-ng_v1 % ./raxml-ng --threads 2 --msa grouped_genes_aligned.fasta --model JTT+G4 --prefix JTT
```
It took like 5-6ish mins. And the output was:
```
AIC score: 33111.505310 / AICc score: 33141.284778 / BIC score: 33500.608069
Free parameters (model + branch lengths): 88

Best ML tree saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.bestTree
All ML trees saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.mlTrees
Optimized model saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.bestModel

Execution log saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.log

Analysis started: 27-Apr-2021 18:53:53 / finished: 27-Apr-2021 19:00:18

Elapsed time: 385.301 seconds
```

Out of the 20 trees, the best tree is saved to a file "JTT.raxml.bestTree".
There is a log file named "JTT.raxml.log", with likelihoods of all 20 trees. Use "grep" to extract the 20 "logLikelihood" values. ```grep "logLikelihood:" JTT.raxml.log```

The final LogLikelihood might be slightly different between different runs. That is because the starting tree used by "search" function is randomly selected. If you fix the random number seed in the command, e.g. "--seed 2". You would get same score between runs.
```grep "Final" JTT.raxml.log```

```
Final LogLikelihood: -16467.752655
```

### Bootstrapping and branch support
In the previous step I generated ML trees from 20 distinct random starting trees, and output the tree with the best likelihood. Now I will get Bootstrapping support values for the trees.


1. Run the bootstrap on ```grouped_genes_aligned.fasta``` file. By default setting, RAxML-NG employs MRE-based bootstrapping test to automatically determine the sufficient number of BS replicates.
```
./raxml-ng  --bootstrap --threads 2 --msa grouped_genes_aligned.fasta --model JTT_G4 --prefix JTT_2
```
This took several hours. Output:
```
Bootstrap trees saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT_2.raxml.bootstraps

Execution log saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT_2.raxml.log

Analysis started: 27-Apr-2021 19:03:50 / finished: 28-Apr-2021 04:26:28
```

### Map bootstrap support values to the best ML tree.
Run the command ```./raxml-ng  --support --tree JTT.raxml.bestTree --bs-trees JTT_2.raxml.bootstraps --prefix JTT```

And the output was:
```
Best ML tree with Felsenstein bootstrap (FBP) support values saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.support

Execution log saved to: /Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.log

Analysis started: 28-Apr-2021 21:29:19 / finished: 28-Apr-2021 21:29:19

Elapsed time: 0.056 seconds
```

# FigTree
I used FigTree to plot my data.

## Download FigTree
I downloaded Figtree here (https://github.com/rambaut/figtree/releases).

## Plotting the tree
I used the final file of ```/Users/soyoungjung/Documents/software/raxml-ng_v1/JTT.raxml.support``` to plot the tree using FigTree.
Figtree has a GUI, so I can just click on different tabs and was able to get the tree.

