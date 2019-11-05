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

# 4. Blast output

- Choose a blast output. We used the one from [exercise 2](https://github.com/gonziesc/bioIt/blob/master/blast/blast.out)
- Install GenBank with `cpanm Bio::DB::GenBank`
- Select the pattern you'd like to look for. We used `Zinc`.
- Run in terminal `perl ./blast output/Ex4.pm`
- Check the `.fas` files in the blast output [folder](https://github.com/gonziesc/bioIt/tree/master/blast%20ouput)

# 5. Emboss

- Install Emboss. In MacOS, run `brew install brewsci/bio/emboss`
- Select a fasta file. We chose the[(exercise one fasta output](https://www.ncbi.nlm.nih.gov/nuccore/NM_002122.3?report=fasta)
- Run in terminal `transeq out.fas -frame 6` in emboss folder. Check results in [out.pep](https://github.com/gonziesc/bioIt/tree/master/emboss/out.pep)
- Download `prosite.dat` and `prosite.doc` from emboss. We downloaded it from this [link](https://prosite.expasy.org/prosuser.html)
- In the Download folder, run `prosextract`
- Go back to emboss folder and run `patmatmotifs out.fas`. Check results in [out.patmatmotifs](https://github.com/gonziesc/bioIt/tree/master/emboss/out.patmatmotifs)
