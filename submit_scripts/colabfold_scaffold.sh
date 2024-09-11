#!/usr/bin/env bash

colabfold_batch ../scaffold.fa ../cfold_denovo --num-recycle 3 --templates --msa-mode 'single_sequence' --custom-template-path ../custom_template --model-type 'auto'