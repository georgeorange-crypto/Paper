import pickle
import glob
import os
import numpy as np


if __name__ == "__main__":
    current_directory = os.getcwd()
    expert_data_files = glob.glob(os.path.join(current_directory, "*.pkl"))
    expert_data_files.sort()

    for file in expert_data_files:
        with open(file, 'rb') as expert_data:
            paths = pickle.load(expert_data)

        returns = list()
        for i in range(len(paths)):
            if i == 5:
                break
            returns.append(np.sum(paths[i]["reward"]))
        
        print(f"Average return for {file.split('/')[-1]}:")
        print(f"\t Mean: {np.mean(returns)}")
        print(f"\t STD: {np.std(returns)}")
        print("\n")

