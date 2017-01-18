clear all; close all
L=imread('International Space Station.jpg');

L1=L(:,:,1);
L2=L(:,:,2);
L3=L(:,:,3);

%size(L)
I1=im2double(L1);
I2=im2double(L2);
I3=im2double(L3);

[u1,s1,v1]=svd(I1);
[u2,s2,v2]=svd(I2);
[u3,s3,v3]=svd(I3);
n = 50;

%figure;
R1=0;
R2=0;
R3=0;


for k=1:n;
    R1 = R1 +u1(:,k)*s1(k,k)*v1(:,k)';
    R2 = R2 +u2(:,k)*s2(k,k)*v2(:,k)';
    R3 = R3 +u3(:,k)*s3(k,k)*v3(:,k)';
  
    R(:,:,1)=R1;
    R(:,:,2)=R2;
    R(:,:,3)=R3;
    
   
    if k==1
        imwrite(R,'SampleRGB_1.jpg')
    elseif k==5  
        imwrite(R,'SampleRGB_5.jpg')
    elseif k==10    
        imwrite(R,'SampleRGB_10.jpg')
    elseif k==20    
        imwrite(R,'SampleRGB_20.jpg')  
    elseif k==50    
        imshow(R,[]);
        imwrite(R,'SampleRGB_50.jpg')
    end
 end;

%figure
%imshow(L);
%title('Original');