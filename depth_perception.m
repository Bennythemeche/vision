
city_stereo=imread('city_stereo.jpg');

imLeft=im(:,1:404);
imRight=im(:,404:end);

%Break right image into superpixels
[L,N]=superpixels(imRight,500);
BW = boundarymask(L);
figure;imshow(imoverlay(imRight,BW,'cyan'));

imLeft=double(im(:,1:404));
imRight=double(im(:,404:end));

for n=1:N
    %for each superpixel, find L2 error between superpixel and superpixel
    mask=L==n;
    mask_shifted=mask;
    for d=0:50  %number is arbitrary is arbitrary.
        
        mask_shifted=[mask_shifted(:,2:end),zeros(596,:)];   %not sure how exactly to do this as of rn...
        error_mat=mask.*imLeft-imRight);
        avg_error(n)=
        
    
    error_mat=mask.*(imLeft-imRight);
    
    avg_squared_error(n)=sum(sum(error_mat.^2))/sum(sum(mask));
    
    X(find(mask))=avg_squared_error(n);
    
end
    
X=reshape(X,size(imLeft));
    