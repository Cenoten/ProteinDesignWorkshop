#!/usr/bin/env bash

run_inference.py inference.output_prefix='../rfdiffusion_de_novo/de_novo' inference.input_pdb='../input_RFdiffusion/7bh9_clean.pdb' inference.num_designs=5 'contigmap.contigs=[E603-730/0 90-120]' 'ppi.hotspot_res=[E669,E671,E672,E689,E703,E705,E709,E712,E714,E716,E717,E718,E721]' diffuser.T=25
