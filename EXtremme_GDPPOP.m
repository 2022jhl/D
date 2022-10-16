 kk=1;
for mm = 1:16
fnm = dir('C:\Users\JHL\Desktop\新建文件夹\极端气候\ExtremeTem_CoastalAreaChina\*_r.tif');
    ff = fnm(kk).name; fff = ff(1:length(ff)-6);
nnn=fff;
gdp = double(imread('C:\Users\JHL\Desktop\新建文件夹\城市\GDP_POP\gdp2015_CC.tif'));
pop = double(imread('C:\Users\JHL\Desktop\新建文件夹\城市\GDP_POP\pop2015_CC.tif'));
cc = double(imread(['C:\Users\JHL\Desktop\新建文件夹\极端气候\ExtremeTem_CoastalAreaChina\',nnn,'_r.tif']));
gdp0 = reshape(gdp,344*217,1);
pop0 = reshape(pop,344*217,1);
cc0 = reshape(cc,344*217,1);
gdp0(gdp==gdp(1,1)|pop==pop(1,1)|cc==cc(1,1))=[]; ggb = gdp0;
pop0(gdp==gdp(1,1)|pop==pop(1,1)|cc==cc(1,1))=[]; ppb = pop0;
cc0(gdp==gdp(1,1)|pop==pop(1,1)|cc==cc(1,1))=[]; ccb=cc0;
bins = (max(cc0)-min(cc0))./5;
for i =1:5
bz = min(cc0)+bins*(i-1);
by = min(cc0)+bins*i;
idx = cc0>=bz & cc0<by;
ccb(idx)=i;
end
all = [ccb,gdp0,pop0];
mgdp=nan(1,1); mpop=nan(1,1); marea=nan(1,1);
for j = 1:5
   mgdp(j,1) = sum(all(all(:,1)==j,2))./sum(gdp0).*100; 
   mpop(j,1) = sum(all(all(:,1)==j,3))./sum(pop0).*100; 
   marea(j,1) = sum(all(:,1)==j)./15903.*100;
end
plot(mgdp,'-square','LineWidth',4);
NNN = upper(nnn);
ylabel(NNN);
set(gca,'XLim',[0.5 5.5],'YLim',[0 100],'XTick',[0,1,2,3,4,5,6],'xticklabel',{' ','低','较低','中','较高','高',' '},'FontSize',27,...
    'LineWidth',2)

hold on
legend({'面积占比（%）','人均GDP占比'})
plot(marea,'-+','LineWidth',4);
hold off
print(gcf, '-djpeg', ['C:\Users\JHL\Desktop\新建文件夹\城市\GDP_POP\',NNN,'.jpg'])
kk=kk+1;
end