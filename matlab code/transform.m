% 设置视频文件路径
videoPath = 'D:\Temperature-Sensitive-Ultrasound-Image-Set\In vitro pork tissue data\Waveguide Antenna Experiment\video\G8.avi';

% 设置输出图片文件夹路径
outputFolder = 'D:\Temperature-Sensitive-Ultrasound-Image-Set\In vitro pork tissue data\Waveguide Antenna Experiment\origin picture\G8';

% 创建VideoReader对象
videoReader = VideoReader(videoPath);

% 循环读取视频帧并保存为图片
frameNum = 1;
while hasFrame(videoReader)
    frame = readFrame(videoReader);
    outputFileName = sprintf('%d.jpg', frameNum);
    outputFullPath = fullfile(outputFolder, outputFileName);
    imwrite(frame, outputFullPath);
    frameNum = frameNum + 1;
end
disp('视频逐帧转化为图片完成');
