#!/usr/bin/env bash

colabfold_batch ../de_novo.fa ../cfold_scaffold --num-recycle 3 --templates --msa-mode 'single_sequence' --custom-template-path ../custom_template --model-type 'auto'