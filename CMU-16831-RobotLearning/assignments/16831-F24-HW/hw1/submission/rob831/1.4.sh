#!/bin/bash

# Array of learning rates to try
learning_rates=(1e-3 3e-3 5e-3 8e-3 10e-3 15e-3 20e-3 25e-3 30e-3 35e-3 40e-3 45e-3 50e-3)

# Loop through each learning rate and run the command
for lr in "${learning_rates[@]}"; do
    echo "Running experiment with learning rate: $lr"
    python rob831/scripts/run_hw1.py \
        --expert_policy_file rob831/policies/experts/Ant.pkl \
        --env_name Ant-v2 \
        --n_iter 1 \
        --expert_data rob831/expert_data/expert_data_Ant-v2.pkl \
        --eval_batch_size 5000 \
        --train_batch_size 300 \
        --n_layers 3 \
        --size 128 \
        --learning_rate $lr \
        --exp_name part_1_3_$lr \
        --video_log_freq -1

    echo "Finished experiment with learning rate: $lr"
done