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


# bowtie build index
bowtie-build ref1.fa bowtie/ref1.fa
bowtie bowtie/ref1.fa  reads_1.fq -S

bowtie bowtie/ref1.fa -1 reads_1.fq -2 reads_2.fq -S

echo "TGAAGCCAAAGAACAAGATGCGCTAGTGGACAGATTGCTGACCAGGGGCTTGAGAGCTG" | rev | tr 'ATCG' 'TAGC'
# CAGCTCTCAAGCCCCTGGTCAGCAATCTGTCCACTAGCGCATCTTGTTCTTTGGCTTCA

echo "TGAAGCCAAAGAACAAGATGCGCTAGTGGACAGATTGCTGACCAGGGGCTTGAGAGCTG"  | tr 'ATCG' 'TAGC'

# bwa mem build index
bwa index ref1.fa 
bwa mem ref1.fa reads_1.fq -v
bwa mem ref1.fa reads_1.fq reads_2.fq

bowtie2-build ref1.fa bowtie2/ref1.fa
bowtie2 -x  bowtie2/ref1.fa -1 reads_1.fq -2 reads_2.fq 
echo "TTAATAACATTATTTTTGAAAATAATTAGGCCATATGACTTTGACACTTTTTCTCTAGCAAAGTGACTAAAGAGAAGCAGGTTTTTAACTGGGTTTTTATTTCTGTTGTGTCTCTAGCCAAAGCCATGCTGATGTTTGATAGTTTTTTTTT" | rev | tr 'ATCG' 'TAGC'