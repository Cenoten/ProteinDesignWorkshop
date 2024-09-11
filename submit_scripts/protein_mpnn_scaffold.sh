#!/usr/bin/env bash

parse_multiple_chains.py --input_path="../rfdiffusion_scaffold" --output_path="parsed_chains.jsonl"

assign_fixed_chains.py --input_path="parsed_chains.jsonl" --output_path="assigned_chains.jsonl" --chain_list "A"

make_fixed_positions_dict.py --input_path="parsed_chains.jsonl" --output_path="fixed_positions.jsonl" --chain_list "A" --position_list "40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63"

protein_mpnn_run.py --jsonl_path "parsed_chains.jsonl" --chain_id_jsonl "assigned_chains.jsonl" --fixed_positions_jsonl "fixed_positions.jsonl" --out_folder "../mpnn_scaffold/" --num_seq_per_target 2 --sampling_temp '0.1' --batch_size 1

