clc;
close all;
clear;
warning off;

MHz=10^6;
mm=10^(-3);
cm=10^(-2);
um=10^(-6);
us=10^(-6);

fs=17.25*MHz;
v=1540;
roi_width=1.87*cm; % image width  图像宽度
WOR=0.5; % window overlap ratio = 1-WOR  窗口重叠比=1-WOR
pulselength=1*us*fs;  
windowsize=3;

aaa456=lvbo1();   
aaa123=lvbo();  
ref_h = bscan(aaa456);             %求取待测包络
ref_h1 = bscan(aaa123);            %求取参考包络  
I=imread('D:\New experiment\tu4\1.jpg');
I = rgb2gray(I);
I = imcrop(I,[222.1022,165.2780,529.4159, 529.4159]);

figure;
imshow(I);
figure;
imagesc(ref_h);

datalength=size(ref_h,1);
alinenumber=size(ref_h,2);
scan_step=roi_width/alinenumber;

conv_mmatrix_temp2 = nakagamimap2(fs,v,scan_step,pulselength,windowsize,ref_h1,1/WOR);
conv_mmatrix1=imresize(conv_mmatrix_temp2,[datalength alinenumber],'cubic');  %将nakagami图片放大倍数   运用三次多项式插值
conv_mmatrix_temp1= nakagamimap1(fs,v,scan_step,pulselength,windowsize,ref_h,1/WOR);  
conv_mmatrix=imresize(conv_mmatrix_temp1,[datalength alinenumber],'cubic');  %将nakagami图片放大倍数   运用三次多项式插值

% 计算RCN矩阵
RCN=abs(5./conv_mmatrix1.*log10(conv_mmatrix./conv_mmatrix1));
a=7.492e-07 ;
b=3.585;
C=(RCN./a).^(1/b);

%画出包含温度信息的RCN矩阵
figure;
m3=RCN;
imagesc(m3);
set(gca,'fontsize',15);
set(gca,'linewidth',2);
xlabel('宽度(mm)','fontsize',20);
ylabel('深度(mm)','fontsize',20);
set(gca,'Clim',[0 1.2]);               %设置颜色的最小值最大值
colormap(hot);
set(colorbar,'YTickLabel',{'0.2','0.4','0.6','0.8','1','1.2','1.4','1.6','1.8','2'},'linewidth',2,'fontsize',15);
cd ..

% 画出包含温度的ARCN矩阵
figure;
m4=ARCN;
imagesc(m4);
set(gca,'fontsize',20);
set(gca,'linewidth',2);
xlabel('宽度(mm)','fontsize',20);
ylabel('深度(mm)','fontsize',20);
set(gca,'Clim',[23.2 57]);         % 设置颜色的最小值最大值
set(colorbar,'YTickLabel',{'25','30','35','40','45','50','55','60'},'linewidth',2,'fontsize',14);
cd ..
