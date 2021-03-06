import matplotlib.pyplot as plt
import numpy as np
  
# setting the x coordinates
x = np.arange(0, 6*(np.pi), 0.01)


# setting the y1 coordinates
y1 = (np.sin(4*(np.pi)*x))*(np.cos(x))
  
# plot the points
plt.plot(x, y1, label = "pendulum 1")


# setting the y1 coordinates
y2 = (np.sin(4*(np.pi)*x))*(np.cos(x + (np.pi / 2)))
  
# plot the points
plt.plot(x, y2, label = "pendulum 2")
  
# show legend
plt.legend()

# show plot
plt.show()
