function [aa] = imreadl(pth)
      kk = imread(pth);
      kk=double(kk);
      kk = reshape(kk,1312*2288,1);
      aa =kk;
      aa(aa==aa(1,1))=[];


end