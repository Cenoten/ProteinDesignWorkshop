#!/usr/bin/env bash

run_inference.py inference.output_prefix='../rfdiffusion_scaffold/scaffold' inference.input_pdb='../input_RFdiffusion/7bh9_clean.pdb' inference.num_designs=5 'contigmap.contigs=[40-40/A3-25/40-40/0 E603-730]' diffuser.T=25