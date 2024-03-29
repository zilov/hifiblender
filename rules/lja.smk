rule lja:
    input: 
        READS
    conda: envs.lja
    threads: workflow.cores
    output: 
        assembly = f"{OUTDIR}/lja/assembly.fasta"
    params: 
        outdir = directory(f"{OUTDIR}/lja"),
    shell: "lja -o {params.outdir} -t {threads} --reads {input}"