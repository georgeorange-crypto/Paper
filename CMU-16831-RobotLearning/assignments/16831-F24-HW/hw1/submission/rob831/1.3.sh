#!/bin/bash

python rob831/scripts/run_hw1.py \
	--expert_policy_file rob831/policies/experts/Ant.pkl \
	--exp_name part_1_2_ant \
    --env_name Ant-v2 \
    --n_iter 1 \
	--expert_data rob831/expert_data/expert_data_Ant-v2.pkl \
    --eval_batch_size 5000 \
    --train_batch_size 300 \
    --n_layers 3 \
    --size 128 \
    --learning_rate 10e-3 \
	--video_log_freq -1

python rob831/scripts/run_hw1.py \
	--expert_policy_file rob831/policies/experts/Hopper.pkl \
	--exp_name part_1_2_Hopper \
	--env_name Hopper-v2 \
    --n_iter 1 \
	--expert_data rob831/expert_data/expert_data_Hopper-v2.pkl \
	--video_log_freq -1 \
    --eval_batch_size 5000 \
    --train_batch_size 300 \
    --n_layers 3 \
    --size 128 \
    --learning_rate 10e-3 \
	--video_log_freq -1

