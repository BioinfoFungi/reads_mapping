# bowtie build index
bowtie-build ref1.fa ref1.fa

# bowtie  mapping
bowtie ref1.fa  test_seq.fq  -S

# bowtie2 build index
bowtie2-build ref1.fa ref1.fa

# bowtie2 mapping
bowtie2 -x ref1.fa -U test_seq.fq

# bowtie2 mapping with local
bowtie2 -x ref1.fa -U test_seq.fq --local

# bwa mem build index
bwa build ref1.fa ref1.fa

# bwa mem mapping
bwa mem ref1.fa test_seq.fq

# bwa mem mapping [change seed length]
bwa mem -k 10 ref1.fa test_seq.fq