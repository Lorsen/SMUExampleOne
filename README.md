# Mobile Sensing and Learning Assignment One

##### Jacob Adkins

##### Omar Roa

##### David Kim

## 'For Thought' answers

### Question 1

##### Yes and no. Preloading the images increases the speed of the app but also increases the resource overhead because the image data now always lives in memory

### Question 2

##### No, it is not more scalable. While pre-loading the images is more performant, it also means they live in memory. And so if we increased the number of images we would also increase the memory usage

### Question 3

##### If there were 1000 images in the assets file, the previous implementation of the model (on demand initialization) would be a better option. It would be slower, but you would remove the overhead of having 10000 images in memory
