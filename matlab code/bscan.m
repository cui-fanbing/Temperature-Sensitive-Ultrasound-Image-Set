function rf_h=bscan(rf_signal)

%obtain image size
image_range=size(rf_signal);
line_number=image_range(2);   %ап
datalength=image_range(1);

%envelope detection and process

for tloop=1:line_number
    rf_h(:,tloop)=abs(hilbert(rf_signal(:,tloop)));    
end