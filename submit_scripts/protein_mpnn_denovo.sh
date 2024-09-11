#!/usr/bin/env bash

parse_multiple_chains.py --input_path="../rfdiffusion_de_novo" --output_path="parsed_chains.jsonl"

assign_fixed_chains.py --input_path="parsed_chains.jsonl" --output_path="assigned_chains.jsonl" --chain_list "A"

protein_mpnn_run.py --jsonl_path "parsed_chains.jsonl" --chain_id_jsonl "assigned_chains.jsonl" --out_folder "../mpnn_denovo/" --num_seq_per_target 2 --sampling_temp '0.1' --batch_size 1

