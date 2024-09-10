#!/bin.bash
CUDA_VISIBLE_DEVICES=0 run_inference.py inference.output_prefix=prod/scaffold inference.input_pdb=7bh9_clean.pdb inference.num_designs=3000 'contigmap.contigs=[30-50/A3-25/30-50/0 E603-730]' diffuser.T=20 
    # 'ppi.hotspot_res=[E669,E671,E672,E689,E703,E705,E709,E712,E714,E716,E717,E718,E721]'\
    # 'potentials.guiding_potentials=["type:dimer_ROG,weight:1,min_dist:5"]' potentials.guide_scale=2 potentials.guide_decay="quadratic"
    # inference.ckpt_override_path=/Software/Local/git/RFdiffusion/models/ActiveSite_ckpt.pt