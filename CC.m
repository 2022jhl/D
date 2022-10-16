aa = double(imread('C:\Users\JHL\Desktop\Deter\Fig4 trend_CC_HA\zuhe_ndvi.tif'));
sum(sum(aa==1))./sum(sum(aa~=-9999))
sum(sum(aa==2))./sum(sum(aa~=-9999))
sum(sum(aa==3))./sum(sum(aa~=-9999))
sum(sum(aa==4))./sum(sum(aa~=-9999))
sum(sum(aa==5))./sum(sum(aa~=-9999))
sum(sum(aa==6))./sum(sum(aa~=-9999))

fnm = dir('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\SPOT-NDVI\NDVI_cc_tif_WGS\*.tif');bb=nan();
bb=nan(3049,2556,19);
for i =2000:2018
    aa = double(imread(['C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\SPOT-NDVI\NDVI_cc_tif_WGS\','ndvi',num2str(i),'.tif']));
    bb(:,:,i-1999)=aa;
end
otspot = mean(bb,3); otspot(otspot==otspot(1,1))=-9999;
otspot1=reshape(otspot,3049*2556,1);
otspot1(otspot1<0)=0;
fnm = dir('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\MODIS_NDVI\tiff_WGS_cc\*.tif');bb=nan();
bb=nan(3049,2556,19);
for i =2000:2018
    aa = double(imread(['C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\MODIS_NDVI\tiff_WGS_cc\','ndvi',num2str(i),'.tif']));
    bb(:,:,i-1999)=aa;
end
otmdois = mean(bb,3); otmdois(otmdois==otmdois(1,1))=-9999;

otmdois1=reshape(otmdois,3049*2556,1);
otspot1=reshape(otspot,3049*2556,1);
otmdois1(otmdois1<0)=0;

otmodis2 = otmdois1;
otspot2 = otspot1;
otspot1(otspot2<=0 | otmodis2<=0) = [];
otmdois1(otspot2<=0 | otmodis2<=0) = [];

kk = [otspot1,otmdois1];
kk1 = unique(kk);

scatter(otspot1,otmdois1)
scatplot(otspot1,otmdois1)


[aa,R]=geotiffread('C:\Users\JHL\Desktop\Deter\Ext_pre_tem_ndvi\ndvi_sp_wgs_cc\ndvi2002.tif'); % 任意一个tif文件
info=geotiffinfo('C:\Users\JHL\Desktop\Deter\Ext_pre_tem_ndvi\ndvi_sp_wgs_cc\ndvi2002.tif');
outpath = 'C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\Compare\';
geotiffwrite([outpath,'mean_spot_navi.tif'],otspot,R,'GeoKeyDirectoryTag',info.GeoTIFFTags.GeoKeyDirectoryTag);
geotiffwrite([outpath,'mean_modis_navi.tif'],otmdois,R,'GeoKeyDirectoryTag',info.GeoTIFFTags.GeoKeyDirectoryTag);

%% 
trendmod = double(imread('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\Compare\trend_modis.tif'));
trendspot = double(imread('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\Compare\trend_spot.tif'));


trendmod1=reshape(trendmod,3049*2556,1);
trendspot1=reshape(trendspot,3049*2556,1);

trendmod2 = trendmod1;
trendspot2 = trendspot1;
trendmod1(trendmod2<=0 | trendspot2<=0) = [];
trendspot1(trendmod2<=0 | trendspot2<=0) = [];

histogram(trendmod1,100);
histogram(trendspot1,100);
%% 
trendmod = double(imread('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\Compare\mean_modis_ndvi.tif'));
trendspot = double(imread('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\Compare\mean_spot_ndvi.tif'));


trendmod1=reshape(trendmod,3049*2556,1);
trendspot1=reshape(trendspot,3049*2556,1);

trendmod2 = trendmod1;
trendspot2 = trendspot1;
trendmod1(trendmod2<=0 | trendspot2<=0) = [];
trendspot1(trendmod2<=0 | trendspot2<=0) = [];

histogram(trendmod1,100)

histogram(trendspot1,100)


% 分布参数拟合
[mu1,sigma1]=normfit(trendmod1);
[mu2,sigma2]=normfit(trendspot1);
% 画已知分布的概率密度曲线
x1 = 0:0.01:1;
y1 = pdf('Normal', x1, mu1,sigma1);
hold on
plot(x1, y1,'--','linewidth',4)
hold on 
y2 = pdf('Normal', x1, mu2,sigma2);
plot(x1, y2,'*')
%% 
fnm = dir('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\SPOT-NDVI\NDVI_cc_tif_WGS\*.tif');bb=nan();
bb=nan(19,1);
for i =2000:2018
    aa = double(imread(['C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\SPOT-NDVI\NDVI_cc_tif_WGS\','ndvi',num2str(i),'.tif']));
    aa(aa<=0) = [];
    bb(i-1999,1) = mean(mean(aa));
end

fnm = dir('C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\MODIS_NDVI\tiff_WGS_cc\*.tif');bb=nan();

for i =2000:2018
    aa = double(imread(['C:\Users\JHL\Desktop\Deter\Fig2_TrendNDVI\MODIS_NDVI\tiff_WGS_cc\','ndvi',num2str(i),'.tif']));
    aa(aa<=0) = [];
    bb(i-1999,1) = mean(mean(aa));
end
%%
ndvi_de_qh = double(imread('C:\Users\JHL\Desktop\Deter\Fig5_InDecreasingBY\ndvi_trend\ndvi_de_qh.tif'));
ndvi_de_qh(isnan(ndvi_de_qh))=[]; ndvi_de_qh=ndvi_de_qh';
ndvi_in_qh = double(imread('C:\Users\JHL\Desktop\Deter\Fig5_InDecreasingBY\ndvi_trend\ndvi_in_qh.tif'));
ndvi_in_qh(isnan(ndvi_in_qh))=[]; ndvi_in_qh=ndvi_in_qh';

k0(1,1) = sum(sum(ndvi_de_qh>80 & ndvi_de_qh<=100))
k0(2,1) = sum(sum(ndvi_de_qh>60 & ndvi_de_qh<=80))
k0(3,1) = sum(sum(ndvi_de_qh>40 & ndvi_de_qh<=60))
k0(4,1) = sum(sum(ndvi_de_qh>20 & ndvi_de_qh<=40))
k0(5,1) = sum(sum(ndvi_de_qh>0 & ndvi_de_qh<=20))

k0(10,1) = sum(sum(ndvi_in_qh>80 & ndvi_in_qh<=100))
k0(9,1) = sum(sum(ndvi_in_qh>60 & ndvi_in_qh<=80))
k0(8,1) = sum(sum(ndvi_in_qh>40 & ndvi_in_qh<=60))
k0(7,1) = sum(sum(ndvi_in_qh>20 & ndvi_in_qh<=40))
k0(6,1) = sum(sum(ndvi_in_qh>0 & ndvi_in_qh<=20))

%%
ndvi_de_hw = double(imread('C:\Users\JHL\Desktop\Deter\Fig5_InDecreasingBY\ndvi_trend\ndvi_de_hw.tif'));
ndvi_de_hw(isnan(ndvi_de_hw))=[]; ndvi_de_hw=ndvi_de_hw';
ndvi_in_hw = double(imread('C:\Users\JHL\Desktop\Deter\Fig5_InDecreasingBY\ndvi_trend\ndvi_in_hw.tif'));
ndvi_in_hw(isnan(ndvi_in_hw))=[]; ndvi_in_hw=ndvi_in_hw';

k0(1,1) = sum(sum(ndvi_de_hw>80 & ndvi_de_hw<=100))
k0(2,1) = sum(sum(ndvi_de_hw>60 & ndvi_de_hw<=80))
k0(3,1) = sum(sum(ndvi_de_hw>40 & ndvi_de_hw<=60))
k0(4,1) = sum(sum(ndvi_de_hw>20 & ndvi_de_hw<=40))
k0(5,1) = sum(sum(ndvi_de_hw>0 & ndvi_de_hw<=20))

k0(10,1) = sum(sum(ndvi_in_hw>80 & ndvi_in_hw<=100))
k0(9,1) = sum(sum(ndvi_in_hw>60 & ndvi_in_hw<=80))
k0(8,1) = sum(sum(ndvi_in_hw>40 & ndvi_in_hw<=60))
k0(7,1) = sum(sum(ndvi_in_hw>20 & ndvi_in_hw<=40))
k0(6,1) = sum(sum(ndvi_in_hw>0 & ndvi_in_hw<=20))


