#!/bin/bash

output_dir="outputs/"
# path_for_assigned_chains="mpnn_json/assigned_pdbs.jsonl"
# path_for_fixed_positions="mpnn_json/fixed_pdbs.jsonl"
chains_to_design="A"
folder_with_pdbs="picked_bb/"

while IFS=, read -r path fixed_str; do
    echo $path
    path_for_parsed_chains=${path%%.pdb}"/parsed.jsonl"
    path_for_fixed_positions=${path%%.pdb}"/fixed.jsonl"
    echo "${fixed_str}"

    path_for_assigned_chains=${path%%.pdb}"/assign.jsonl"
    echo $path
    echo $path_for_assigned_chains
    echo $path_for_fixed_positions
    echo $path_for_parsed_chains
    python /software/AMD/git/ProteinMPNN/helper_scripts/parse_multiple_chains.py --input_path "$path" --output_path "$path_for_parsed_chains"

    python /software/AMD/git/ProteinMPNN/helper_scripts/assign_fixed_chains.py --input_path=$path_for_parsed_chains --output_path=$path_for_assigned_chains --chain_list "$chains_to_design"

    python /software/AMD/git/ProteinMPNN/helper_scripts/make_fixed_positions_dict.py --input_path=$path_for_parsed_chains --output_path=$path_for_fixed_positions --chain_list "$chains_to_design" --position_list "${fixed_str}"
    python /software/AMD/git/ProteinMPNN/protein_mpnn_run.py \
    --jsonl_path $path_for_parsed_chains \
    --chain_id_jsonl $path_for_assigned_chains \
    --fixed_positions_jsonl $path_for_fixed_positions \
    --out_folder $output_dir \
    --num_seq_per_target 10 \
    --sampling_temp "0.1" \
    --batch_size 1

done < for_fixed.txt

