Ultrasonic temperature measurement data set for microwave hyperthermia
Project overview:
This project aims to build a comprehensive ultrasonic temperature measurement data set by combining microwave hyperthermia technology, B-ultrasound image acquisition technology and thermocouple temperature measurement technology, and provide the corresponding data processing and analysis code. The data set and code are of great significance for the study of temperature distribution, evaluation of therapeutic effect and optimization of therapeutic parameters during microwave hyperthermia.

Data set specification:
Data set structure:
Due to the limited storage size of github warehouse, I have stored picture data and temperature data in Gitee warehouse (Gitee is a code hosting and R&D collaboration platform based on Git), which can store a large amount of data. For the specific description of each warehouse, see the readme file in each warehouse. The specific address and brief introduction of the warehouse are as follows:
Original Ultrasound Imaging Video:
Address: https://gitee.com/imust_xinxi/Original-Ultrasound-Imaging-Video.git
The warehouse stores raw ultrasound image data, 8 minutes per experiment, so each video is 8 minutes, video 30 frames per second, file format.AVI
Temperature Data:
Address: https://gitee.com/imust_xinxi/temperature-data.git
The warehouse stores raw temperature data, and the experiment records 1 temperature data per second, a total of 480 temperatures for 8 minutes, in the file format.xls
Original image extracted frame by frame: Original image extracted frame by frame:
Address: https://gitee.com/imust_xinxi/Original-image-extracted-frame-by-frame.git
The warehouse stores the original ultrasonic pictures extracted by matlab software frame by frame, a total of 14400 ultrasonic videos of 8 minutes, compressed package format.zip, image file format.jpg
Filtered images:
Address: https://gitee.com/imust_xinxi/Filtered-images.git
The warehouse stores ultrasonic images filtered by time and space dimensions, 480 images per experiment, compressed package format.zip, image file format.jpg
Region of interest:
Address: https://gitee.com/imust_xinxi/region-of-interest.git
The warehouse stores ultrasonic images after positioning the selected area of interest, 480 images per experiment, compressed package format.zip, image file format.jpg

Data set content:
B-ultrasound image data: Tissue images collected in real time by B-ultrasound equipment during microwave hyperthermia. These images reflect the morphological changes of the tissue at different heating stages.
Thermocouple temperature measurement data: At the same time, a high-precision thermocouple is used to measure the temperature near the hyperthermia area and record the temperature data over time.
Synchronization information: Ensure that the B-ultrasound image is synchronized with the time stamp of the thermocouple temperature measurement data to facilitate subsequent data association and analysis.
Data set characteristics:
High spatial and temporal resolution: B-ultrasound images and thermocouple temperature measurement data have high temporal resolution, which can capture subtle changes in the process of hyperthermia.
Synchronization: The image is strictly synchronized with the temperature measurement data to ensure the accuracy of the analysis.
Diversity: The data set covers different hyperthermia parameters and different tissue types, improving the universality and practicality of the study.
