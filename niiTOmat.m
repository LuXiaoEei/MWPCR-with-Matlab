% ����Ŀ¼������Ŀ¼�µ�����.nii�ļ�ת��Ϊ���������mat�ļ�.
cd E:\mypackages\MWPCR-with-Matlab;
allpath=search_nii({},'C:\Users\luxiaolei\Desktop\ABIDE');

imgfile=cell(size(allpath,1),1);
for index=1:size(allpath,1)
   imgfile(index,1)={load_nii(allpath{index,1})}; 
end
siz=size(imgfile{1}.img);

img=zeros(size(imgfile,1),prod(siz));
for index=1:size(imgfile,1)
    img(index,:)=reshape(imgfile{index}.img,1,[]);
end
% img=imgfile{1}.img;
% img=img(100:103,89:90,23:25);
% imshow(reshape(img(100,:,:),256,256),[0,255])
% imshow(img(:,:,120),[0,255])
% imshow(reshape(img(1,100*176*256+1:101*176*256),176,256),[0 255])
% imshow(imgfile{1}.img(:,:,100),[0 255])