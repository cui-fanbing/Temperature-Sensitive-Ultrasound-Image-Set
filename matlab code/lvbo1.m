function aaa456=lvbo1()
%ʱ��Ϳ����˲�
clc;
clear all;
%ʱ���˲�
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

%��ֵ�˲�
n=3;
blur=medfilt2(C,[n,n]);  



[m,n]=size(blur);    %��m,n��ʾͼ�����������
    for k=1:m                         
         for o=1:n                        %����ÿ������
             if blur(k,o)>200  %�����صĻҶ�ֵ����100ʱ�����ûҶ�ȡ��ֵ
                blur(k,o)=0;
             end
         end
    end
aaa456 = blur;