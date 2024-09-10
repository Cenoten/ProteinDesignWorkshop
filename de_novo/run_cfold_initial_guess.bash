# colabfold_batch rbd.fa test_2  --num-recycle 3  --templates --custom-template-path custom_template 
#--msa-mode single_sequence
CUDA_VISIBLE_DEVICES=0 colabfold_batch \
    dimer_ROG_gpu0.fa \
    cfold_initial_guess_prod \
  --num-recycle 3 \
  --templates \
  --msa-mode single_sequence \
  --custom-template-path custom_template &

CUDA_VISIBLE_DEVICES=1 colabfold_batch \
    dimer_ROG_gpu1.fa \
    cfold_initial_guess_prod \
  --num-recycle 3 \
  --templates \
  --msa-mode single_sequence \
  --custom-template-path custom_template &


CUDA_VISIBLE_DEVICES=2 colabfold_batch \
    dimer_ROG_gpu2.fa \
    cfold_initial_guess_prod \
  --num-recycle 3 \
  --templates \
  --msa-mode single_sequence \
  --custom-template-path custom_template &


CUDA_VISIBLE_DEVICES=3 colabfold_batch \
    dimer_ROG_gpu3.fa \
    cfold_initial_guess_prod \
  --num-recycle 3 \
  --templates \
  --msa-mode single_sequence \
  --custom-template-path custom_template