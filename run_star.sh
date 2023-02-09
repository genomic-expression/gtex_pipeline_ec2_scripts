#!/bin/bash

# Define the STAR command
STAR_COMMAND="STAR \
    --runMode alignReads \
    --runThreadN 8 \
    --genomeDir /home/ubuntu/STAR/STAR_Index \
    --twopassMode Basic \
    --outFilterMultimapNmax 20 \
    --alignSJoverhangMin 8 \
    --alignSJDBoverhangMin 1 \
    --outFilterMismatchNmax 999 \
    --outFilterMismatchNoverLmax 0.1 \
    --alignIntronMin 20 \
    --alignIntronMax 1000000 \
    --alignMatesGapMax 1000000 \
    --outFilterType BySJout \
    --outFilterScoreMinOverLread 0.33 \
    --outFilterMatchNminOverLread 0.33 \
    --limitSjdbInsertNsj 1200000 \
    --readFilesIn /home/ubuntu/STAR/A_91_190613_23364_FZ_S1_R1_001.fastq.gz /home/ubuntu/STAR/A_91_190613_23364_FZ_S1_R2_001.fastq.gz \
    --readFilesCommand zcat \
    --outFileNamePrefix A_91_190613_23364_FZ_S1 \
    --outSAMstrandField intronMotif \
    --outFilterIntronMotifs None \
    --alignSoftClipAtReferenceEnds Yes \
    --quantMode TranscriptomeSAM GeneCounts \
    --outSAMtype BAM SortedByCoordinate \
    --outSAMunmapped Within \
    --genomeLoad NoSharedMemory \
    --chimSegmentMin 15 \
    --chimJunctionOverhangMin 15 \
    --chimOutType Junctions WithinBAM SoftClip \
    --chimMainSegmentMultNmax 1 \
    --outSAMattributes NH HI AS nM NM ch \
    --outSAMattrRGline ID:rg1 SM:sm1"

# Execute the STAR command
$STAR_COMMAND
