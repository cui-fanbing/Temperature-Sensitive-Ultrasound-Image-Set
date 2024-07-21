The overall function achieved by the code is to convert the ultrasonic video into frame-by-frame pictures, and perform filtering operations in time and space dimensions. In order to simplify the location of the calculated area of interest, sliding window method is used to estimate Nakagami distribution parameters and polynomial fitting, and the correlation between ultrasonic parameters and temperature is explored. The code is described as follows:

transform: Extract the original ultrasonic video into pictures frame by frame and save the obtained pictures.

dingwei: Select the first image of each experiment, manually select the center point of the temperature probe, and select the region with a pixel value of 256*256 as the area of interest for subsequent processing and analysis.

lvbo, lvbo1: The obtained original ultrasonic images are filtered in time and space dimensions.
Time dimension: In order to eliminate the random noise of B-ultrasound image data, each pixel of all frames per second is averaged, so that the frequency of ultrasonic image data is consistent with the temperature data measured by the thermocouple, and the calculation amount, time and efficiency can be reduced in subsequent ultrasonic image processing.
Spatial dimension: the median filtering method is adopted. The filtering method is a nonlinear signal processing method which can effectively suppress noise based on sequencing statistical theory. It can eliminate pulse noise and salt-and-pepper noise, and protect the edge information of image, so that it will not be distorted.

bscan, nagakamimap1, nakagamimap2: These three are functions to calculate the envelope information, calculate the envelope image at the reference temperature and the envelope image at the current temperature respectively, and calculate the RCN and ARCN matrix

Fitting of a polynomial: To explore the correlation between ARCN parameters and temperature.
