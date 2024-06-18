#!/usr/bin/env nextflow

process example {
    publishDir "s3:///adrian-navarro-test/test"

    input:
    val sample

    output:
    path "*fastq.gz"

    script:
    """
    touch ${sample}.fastq.gz
    """
}

workflow {
    example(Channel.of("SAMP1", "SAMP2"))
}
