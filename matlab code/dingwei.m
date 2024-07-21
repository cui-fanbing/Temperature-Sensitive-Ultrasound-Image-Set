folder_path = 'D:\Temperature-Sensitive-Ultrasound-Image-Set\In vitro pork tissue data\Waveguide Antenna Experiment\filter\G8';  
output_path = 'D:\Temperature-Sensitive-Ultrasound-Image-Set\In vitro pork tissue data\Waveguide Antenna Experiment\ROI\G8';  
output_filename_prefix = '';  
  
% 获取所有图像文件  
image_files = dir(fullfile(folder_path, '*.jpg'));  
  
% 读取第一张图像并显示，等待手动定位  
first_image = imread(fullfile(folder_path, image_files(1).name));  
figure; imshow(first_image);  
title('请用鼠标选择感兴趣区域的中心点，并按任意键继续');  
  
% 手动选择中心点  
[x, y] = ginput(1);  
close(gcf);  
  
% 计算256x256正方形区域的起始点和宽高  
half_size = 128;  % 256x256的一半  
x_start = max(round(x) - half_size, 1);  % 确保x_start不会小于1  
y_start = max(round(y) - half_size, 1);  % 确保y_start不会小于1  
roi = [x_start, y_start, 256, 256];  % 256x256区域  
  
% 遍历图像文件并裁剪感兴趣区域  
for i = 1:numel(image_files)  
    image = imread(fullfile(folder_path, image_files(i).name));  
      
    % 确保裁剪区域不会超出图像边界  
    [rows, cols, ~] = size(image);  % 获取图像尺寸  
    x_end = min(x_start + 256 - 1, cols);  
    y_end = min(y_start + 256 - 1, rows);  
    roi_adjusted = [x_start, y_start, x_end - x_start + 1, y_end - y_start + 1];  
      
    % 裁剪感兴趣区域  
    cropped_image = imcrop(image, roi_adjusted);  
      
    % 保存裁剪后的图像  
    output_filename = fullfile(output_path, [output_filename_prefix num2str(i) '.jpg']);  
    imwrite(cropped_image, output_filename);  
end  
  
disp('处理完成！');