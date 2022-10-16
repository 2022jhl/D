fnm = dir('D:\LUCCPe\LUC_ALL\NDVI_FVC\P+T\T_WGS\*.tif');
inpth = fnm(1).folder;
aa = nan(327,525,372);%348

for i =1:12*30
   aa(:,:,i) = double(imread([inpth,'\',fnm(i).name]));
end
    aa(aa==0)=NaN;
for j =1:30
   b = aa(:,:,((12*j-11):(12*j))); 
   c = nanmean(b,3);
   c(isnan(c))=-9999;
    %% save
    otpth = ['D:\LUCCPe\LUC_ALL\NDVI_FVC\P+T_year\tem_',num2str(j+1985),'.txt'];
    str = {'ncols    525';
        'nrows    327';
        'xllcorner     99.934295502181';
        'yllcorner     33.535333162693';
        'cellsize    0.05';
        'NODATA_value    -9999'};
    
    fid=fopen(otpth,'wt');%%鍚屾椂淇敼鏂囦欢鍚?
    for jj=1:6
        fprintf(fid,'%s\n',str{jj,:});
    end
    fclose(fid);
    
    fid2 = fopen(otpth,'a+');%%鍚屾椂淇敼鏂囦欢鍚?
    ffff = '%.4f ';
    [x,y] = size(c);
    ffffff = repmat(ffff,1,y);
    for  mmmm=1:x
        fprintf(fid2,[ffffff,'\n'],c(mmmm,:));
    end
    fclose(fid2);
end


%% 
inpre = 'D:\LUCCPe\LUC_ALL\NDVI_FVC\P+T_year_ext\pre_';
intem = 'D:\LUCCPe\LUC_ALL\NDVI_FVC\P+T_year_ext\tem_';
infvc = 'D:\LUCCPe\LUC_ALL\NDVI_FVC\ALL_APTZ_tif_year_ext\';
pre = nan(273*476,15);
tem = nan(273*476,15);
fvc = nan(273*476,15);
for i =1986:2000
    pre(1:273*476,i-1985) = reshape(double(imread([inpre,num2str(i),'.tif'])),273*476,1);
    tem(1:273*476,i-1985) = reshape(double(imread([intem,num2str(i),'.tif'])),273*476,1);
    fvc(1:273*476,i-1985) = reshape(double(imread([infvc,num2str(i),'.tif'])),273*476,1);
end
R_p = nan(273*476,2);
R_t = nan(273*476,2);
for i = 1:273*476
    tpre = pre(i,:)'; 
     ttem = tem(i,:)'; 
      tfvc = fvc(i,:)'; 
      if sum(tpre)> -1000 && sum(ttem)> -1000 && sum(tfvc) > -1000
          [R_p_f,P_p_f] = corr(tpre,tfvc);
          [R_t_f,P_t_f] = corr(ttem,tfvc);
          R_p(i,1) = R_p_f;  R_p(i,2) = P_p_f; 
          R_t(i,1) = R_t_f;  R_t(i,2) = P_t_f; 
      end
end

R_p_1 = reshape(R_p(:,1),273,476);R_p_1(isnan(R_p_1)) = -9999;
P_p_1 = reshape(R_p(:,2),273,476);P_p_1(isnan(P_p_1)) = -9999;
R_t_1 = reshape(R_t(:,1),273,476);R_t_1(isnan(R_t_1)) = -9999;
P_t_1 = reshape(R_t(:,2),273,476);P_t_1(isnan(P_t_1)) = -9999;

save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr_ZHIJIE\R_p_1_1986_2000.txt R_p_1 -ascii
save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr_ZHIJIE\P_p_1_1986_2000.txt P_p_1 -ascii
save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr_ZHIJIE\R_t_1_1986_2000.txt R_t_1 -ascii
save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr_ZHIJIE\P_t_1_1986_2000.txt P_t_1 -ascii


%% 
for i =1986:2000
   pre(1:273*476,i-1985) = reshape(double(imread(['D:\LUCCPe\LUC_ALL\NDVI_FVC\P+T_year_ext\tem_',num2str(i),'.tif'])),273*476,1); 
end

R_p1 = nan(273*476,1);
R_p2 = nan(273*476,1);
parfor i = 1:273*476
    tpre = pre(i,:)'; 
      if sum(tpre)> -1000
          Y=(1:15)';
            X=[ones(size(tpre,1),1),tpre];
            [b,bint,r,rint,s]=regress(Y,X);
          R_p1(i,1) = b(2);  R_p2(i,1) = s(3); 
      end
end

R_p_1 = reshape(R_p1(:,1),273,476); R_p_1(isnan(R_p_1)) = -9999;
R_p_2 = reshape(R_p2(:,1),273,476); R_p_2(isnan(R_p_2)) = -9999;

save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr\Tem_R_1986_2000.txt R_p_1 -ascii
save D:\LUCCPe\LUC_ALL\NDVI_FVC\Corr\Tem_P_1986_2000.txt R_p_2 -ascii


