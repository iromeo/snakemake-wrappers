rule get_variation:
    output:
        vcf="refs/variation.vcf.gz"
        # optional: add fai to get VCF with annotated contig lengths (as required by GATK)
        # fai="refs/genome.fasta.fai"
    params:
        species="saccharomyces_cerevisiae",
        release="98",
        build="R64-1-1",
        type="all" # one of "all", "somatic", "structural_variation"
    log:
        "logs/get_variation.log"
    wrapper:
        "master/bio/reference/ensembl-variation"


