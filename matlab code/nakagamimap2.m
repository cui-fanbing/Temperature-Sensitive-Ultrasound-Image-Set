function localm2=nakagamimap1(fs,v,scan_step,pulselength,cc,envelope,WOR)
image_range=size(envelope);
line_number=image_range(2);     %区域的列数
datalength=image_range(1);      %区域的行数

num1=round(cc*pulselength);
num2=round(cc*pulselength);

ccc=1;
for k=1:round(1*num1/WOR):(datalength-num1)
   ddd=1;
    for kk=1:round(1*num2/WOR):(line_number-num2)
       B=envelope(k:k+num2,kk:kk+num1);
       Bb=reshape(B,(num2+1)*(num1+1),1);
       localmTR(ccc,ddd)=(mean(Bb.^2)).^2/(mean((Bb.^2-mean(Bb.^2)).^2));
       if isnan(localmTR(ccc,ddd))==1;
          localmTR(ccc,ddd)=0;
       end
       ddd=ddd+1;
    end   
   ccc=ccc+1;
end
localm2=localmTR;