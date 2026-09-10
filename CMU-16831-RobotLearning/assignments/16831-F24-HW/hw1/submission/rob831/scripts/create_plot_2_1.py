# import matplotlib.pyplot as plt
# import numpy as np

# # ------ Ant-v2 ------
# iter = np.arange(10)
# mean = [1392.7462, 4357.0889, 4004.3137, 4737.0771, 4637.7598, 4632.1860, 4829.4727, 4772.4907, 4235.2339, 4750.2744]
# std = [771.9338, 87.4678, 1271.1949, 62.6049, 135.9574, 87.3408, 77.9784, 41.0768, 950.8602, 83.1008]

# # Plotting with error bars
# plt.figure(figsize=(10, 6))
# plt.errorbar(iter, mean, yerr=std, fmt='-o', capsize=5, label="DAgger")

# # Adding horizontal lines for BC and Expert
# plt.axhline(y=1392.7462, color='r', linestyle='--', label="BC")
# plt.axhline(y=4713.65, color='g', linestyle='--', label="Expert")

# # Labels and title
# plt.xlabel('Iteration')
# plt.ylabel('Policy Evaluation Performance')
# # plt.grid(True)
# plt.legend()

# # Show plot
# plt.show()


# # ------ Hopper-v2 ------
# mean_2 = [781.6841, 1570.4227, 3752.0520, 2704.5981, 3771.5913, 3771.3633, 
#           3776.4407, 3780.6804, 3772.9316, 3776.7866]
# std_2 = [346.0215, 737.0059, 5.7851, 722.5469, 7.7128, 3.3309, 3.8244, 
#          3.2768, 0.9456, 3.1214]

# # Plotting with error bars and adding horizontal lines for BC and Expert
# plt.figure(figsize=(10, 6))
# plt.errorbar(iter, mean_2, yerr=std_2, fmt='-o', capsize=5, label="DAgger")

# # Adding horizontal lines for BC and Expert
# plt.axhline(y=781.6841, color='r', linestyle='--', label="BC")
# plt.axhline(y=3772.6704, color='g', linestyle='--', label="Expert")

# # Labels and title
# plt.xlabel('Iteration')
# plt.ylabel('Policy Evaluation Performance')
# # plt.grid(True)
# plt.legend()

# # Show plot
# plt.show()

import matplotlib.pyplot as plt
import numpy as np

# Data
iter = np.arange(10)

# Ant-v2 data
mean = [1392.7462, 4357.0889, 4004.3137, 4737.0771, 4637.7598, 4632.1860, 4829.4727, 4772.4907, 4235.2339, 4750.2744]
std = [771.9338, 87.4678, 1271.1949, 62.6049, 135.9574, 87.3408, 77.9784, 41.0768, 950.8602, 83.1008]

# Hopper-v2 data
mean_2 = [781.6841, 1570.4227, 3752.0520, 2704.5981, 3771.5913, 3771.3633, 
          3776.4407, 3780.6804, 3772.9316, 3776.7866]
std_2 = [346.0215, 737.0059, 5.7851, 722.5469, 7.7128, 3.3309, 3.8244, 
         3.2768, 0.9456, 3.1214]

# Create a figure with two subplots
fig, axs = plt.subplots(1, 2, figsize=(14, 6))

# Plot for Ant-v2
axs[0].errorbar(iter, mean, yerr=std, fmt='-o', capsize=5, label="DAgger")
axs[0].axhline(y=1392.7462, color='r', linestyle='--', label="BC")
axs[0].axhline(y=4713.65, color='g', linestyle='--', label="Expert")
axs[0].set_xlabel('Iteration')
axs[0].set_ylabel('Policy Evaluation Performance')
axs[0].legend()
axs[0].set_title('Ant-v2')

# Plot for Hopper-v2
axs[1].errorbar(iter, mean_2, yerr=std_2, fmt='-o', capsize=5, label="DAgger")
axs[1].axhline(y=781.6841, color='r', linestyle='--', label="BC")
axs[1].axhline(y=3772.6704, color='g', linestyle='--', label="Expert")
axs[1].set_xlabel('Iteration')
axs[1].set_ylabel('Policy Evaluation Performance')
axs[1].legend()
axs[1].set_title('Hopper-v2')

# Adjust layout and show plot
plt.tight_layout()
plt.show()