## BIO IT 

# 1. Sequence processing

- We chose [Celiac disease](https://www.omim.org/entry/212750?search=celiac&highlight=(celiac|coeliac))
- Check the [gen](https://www.ncbi.nlm.nih.gov/gene/3117/)
- Select the [nucleotide](https://www.ncbi.nlm.nih.gov/nuccore/1370507992)
- Install perl and [BioPerl::SeqIO](https://bioperl.org/howtos/Beginners_HOWTO.html) (we used `cpanm Bio::SeqIO`)
- Run in terminal `perl ./sequence\ processing/Ex1.pm`
- Check output in [out.fas](https://github.com/gonziesc/bioIt/blob/master/sequence%20processing/out.fas)
- Check your gen in fasta file. Our is [this one](https://www.ncbi.nlm.nih.gov/nuccore/XM_006715079.4?report=fasta)
- Enter [ORF FINDER](https://www.ncbi.nlm.nih.gov/orffinder/)
- Enter your gen in fasta type and see the result. Select from your [out.fas](https://github.com/gonziesc/bioIt/blob/master/sequence%20processing/out.fas) the correct one between the six alternatives.
- In out case, the correct one was NM_002122-2F

# 2. BLAST

- Select one or multiple sequences in a FASTA file. We chose our first exercise [output](https://github.com/gonziesc/bioIt/blob/master/sequence%20processing/out.fas)
- Install blast with `cpanm Bio::Tools::Run::StandAloneBlastPlus`
- Run in terminal `perl ./blast/Ex2.pm`
- Check output in [blast.out](https://github.com/gonziesc/bioIt/blob/master/blast/blast.out)

- If you want to run locally, download swissprot from ftp://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz
- Run `gzip -d swissprot.gz` to unzip file
- Change swissprot db path in [Ext_2local.pm](https://github.com/gonziesc/bioIt/blob/master/blast/Ex2_local.pm) 
- Run in terminal `perl ./blast/Ex2_local.pm`

# 3. Multisequence processing

- Select 3 sequences from your [blast result](https://github.com/gonziesc/bioIt/blob/master/blast/blast.out). They should be from different species.
- Enter [uniprot](https://www.uniprot.org/align)
- Find the uniprot code for the proteins sequences in NCBI
- Paste the uniprot codes and click on run
