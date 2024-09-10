#!/bin/bash


# path_for_fixed_positions="fixed_pdbs.jsonl"
# path_for_tied_positions="tied_positions.jsonl"
folder_with_pdbs="picked_bb/"
output_dir="seq"
path_for_parsed_chains="parsed_pdbs.jsonl"
path_for_assigned_chains="assigned_pdbs.jsonl"
chains_to_design="A" 

# python /software/AMD/git/dl_binder_design/mpnn_fr/ProteinMPNN/helper_scripts/parse_multiple_chains.py \
#          --input_path=$folder_with_pdbs \
#          --output_path=$path_for_parsed_chains

# python /software/AMD/git/dl_binder_design/mpnn_fr/ProteinMPNN/helper_scripts/assign_fixed_chains.py \
#         --input_path=$path_for_parsed_chains \
#         --output_path=$path_for_assigned_chains \
#         --chain_list "$chains_to_design"


CUDA_VISIBLE_DEVICES=1 python /software/AMD/git/ProteinMPNN/protein_mpnn_run.py \
        --jsonl_path $path_for_parsed_chains \
        --chain_id_jsonl $path_for_assigned_chains \
        --out_folder "test/" \
        --num_seq_per_target 10 \
        --sampling_temp "0.1" \
        --batch_size 1
