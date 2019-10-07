## BIO IT 

# 1. Sequence processing

- We chose [Celiac disease](https://www.omim.org/entry/212750?search=celiac&highlight=(celiac|coeliac))
- Check the [gen](https://www.ncbi.nlm.nih.gov/gene/3117/)
- Select the [nucleotide](https://www.ncbi.nlm.nih.gov/nuccore/NC_000006.12?report=genbank&from=32637406&to=32654846) *THIS IS WRONG, CHECK*
- Install perl and [BioPerl::SeqIO](https://bioperl.org/howtos/Beginners_HOWTO.html) (we used `cpanm Bio::SeqIO`)
- Run in terminal `perl ./sequence\ processing/Ex1.pm`
- Check output in [out.fas](https://github.com/gonziesc/bioIt/blob/master/sequence%20processing/out.fas)

# 2. BLAST

- Select one or multiple sequences in a FASTA file. We chose our first exercise [output](https://github.com/gonziesc/bioIt/blob/master/sequence%20processing/out.fas)
- Install blast with `cpanm Bio::Tools::Run::StandAloneBlastPlus`
- Run in terminal `perl ./blast/Ex2.pm`
- Check output in [blast.out](https://github.com/gonziesc/bioIt/blob/master/blast/blast.out)

- If you want to run locally, download swissprot from ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz
- Run `gzip -d swissprot.gz` to unzip file
- Change swissprot db path in [Ext_2local.pm](https://github.com/gonziesc/bioIt/blob/master/blast/Ex2_local.pm) 
- Run in terminal `perl ./blast/Ex2_local.pm`
