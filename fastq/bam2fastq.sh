# samtools \
#     bam2fq \
#     -@ 2 \
#     2-germline/bams/mother.bam | gzip --no-name > 2-germline/bams/mother.bam.fq.gz

samtools fastq \
    -1 2-germline/fastq/mother_1.fastq \
    -2 2-germline/fastq/mother_2.fastq \
    -s 2-germline/fastq/mother_singletons.fastq \
    2-germline/bams/mother.bam




