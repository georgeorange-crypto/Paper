#!/bin/bash

python rob831/scripts/run_hw1.py \
    --expert_policy_file rob831/policies/experts/Ant.pkl \
    --env_name Ant-v2 \
    --exp_name part_2_1_ant \
    --n_iter 10 \
    --do_dagger --expert_data rob831/expert_data/expert_data_Ant-v2.pkl \
	--eval_batch_size 5000 \
    --train_batch_size 300 \
    --n_layers 3 \
    --size 128 \
    --learning_rate 5e-3 \
	--video_log_freq -1

python rob831/scripts/run_hw1.py \
    --expert_policy_file rob831/policies/experts/Hopper.pkl \
    --env_name Hopper-v2 \
    --exp_name part_2_1_hopper \
    --n_iter 10 \
    --do_dagger --expert_data rob831/expert_data/expert_data_Hopper-v2.pkl \
	--eval_batch_size 5000 \
    --train_batch_size 300 \
    --n_layers 3 \
    --size 128 \
    --learning_rate 5e-3 \
	--video_log_freq -1