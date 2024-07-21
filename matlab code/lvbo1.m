function aaa456=lvbo1()
%时域和空域滤波
clc;
clear all;
%时域滤波
str='D:\New experiment\tu4\';
S=0;
for i=4951:4980
    I=imread([str,num2str(i),'.jpg']);
    P=rgb2gray(I);
    P=double(P);
    S=S+P;
end
W = imcrop(S,[353.1022,192.2780,339.4159, 275.4159]);
C=W/30;
C=uint8(C);

%中值滤波
n=3;
blur=medfilt2(C,[n,n]);  



[m,n]=size(blur);    %用m,n表示图像的像素坐标
    for k=1:m                         
         for o=1:n                        %遍历每个像素
             if blur(k,o)>200  %当像素的灰度值大于100时，将该灰度取均值
                blur(k,o)=0;
             end
         end
    end
aaa456 = blur;