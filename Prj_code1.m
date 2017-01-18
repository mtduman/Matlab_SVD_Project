clear all; close all
L=imread('Albert-Einstein-Portraits-ipad-wallpaper-ilikewallpaper_com.jpg');
L1=L(:,:,1);
size(L)
I=im2double(L1);
[u,s,v]=svd(I);
n = 20;

%figure;
R1=0;
for k=1:n;
    R1 = R1 +u(:,k)*s(k,k)*v(:,k)';
    imshow(R1,[]);
    if k==1
        imwrite(R1,'Sample_1.jpg')
    elseif k==5  
        imwrite(R1,'Sample_5.jpg')
    elseif k==10    
        imwrite(R1,'Sample_10.jpg')
    elseif k==20    
        imwrite(R1,'Sample_20.jpg')
    end
 end;

%figure
%imshow(L1);
%title('Original');