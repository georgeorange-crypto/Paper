import matplotlib.pyplot as plt
import numpy as np

# Example learning rates and their corresponding performances
learning_rates = [1e-3, 3e-3, 5e-3, 8e-3, 10e-3, 15e-3, 20e-3, 25e-3, 30e-3, 35e-3, 40e-3, 45e-3]
mean = [-249.80166625976562, 1443.3216552734375, 1392.7462158203125, 3349.518310546875, 3870.38330078125, 3645.00732421875, 2887.598388671875, 2183.167236328125, 805.6134643554688, 921.804931640625, 636.562255859375, 337.8512268066406]
std = [324.1832580566406, 647.7286376953125, 771.9337768554688, 913.46923828125, 103.14678192138672, 1398.5474853515625, 1662.2489013671875, 1704.5472412109375, 499.2960205078125, 412.59100341796875, 236.82916259765625, 301.140380859375]

# Create a figure with two subplots
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))

# Plot for mean performance
ax1.plot(learning_rates, mean, marker='o', linestyle='-', color='b')
ax1.set_xlabel('Learning Rate')
ax1.set_ylabel('BC Policy Evaluation Performance Mean')
ax1.set_title('Mean Performance')
ax1.grid(True)

# Plot for standard deviation
ax2.plot(learning_rates, std, marker='o', linestyle='-', color='r')
ax2.set_xlabel('Learning Rate')
ax2.set_ylabel('BC Policy Evaluation Performance Std')
ax2.set_title('Standard Deviation of Performance')
ax2.grid(True)

# Display the plots
plt.tight_layout()
plt.show()