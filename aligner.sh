echo "TGAAGCCAAAGAACAAGATGCGCTAGTGGACAGATTGCTGACCAGGGGCTTGAGAGCTG" | rev | tr 'ATCG' 'TAGC'


bowtie2 -x  bowtie2/ref1.fa -1 reads_1.fq -2 reads_2.fq 

bwa mem bwa/ref1.fa reads_1.fq reads_2.fq


bowtie2 -x  bowtie2/ref1.fa -1 reads_1.fq -2 reads_2_discordantly.fq 

bwa mem bwa/ref1.fa reads_1.fq reads_2_discordantly.fq

echo "TGAAGCCAAAGAACAAGATGCGCTAGTGGACAGATTGCTGACCAGGGGCTTGAGAGCTG"  | tr 'ATCG' 'TAGC'

bowtie2 -x  bowtie2/ref1.fa -1 reads_1.fq -2 reads_2_tr.fq 

bwa mem bwa/ref1.fa reads_1.fq reads_2_tr.fq