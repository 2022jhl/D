aa0 = load('D:\\结果\3_Typical_Steppe\2_GD\S30_TypicalSteppe\alldata_change907P.txt');%第一列是y，第二列是x
aa=[aa0(:,15),aa0(:,40)];%第一列是y，第二列是x
n2 = min(aa(:,2));
a2 = max(aa(:,2));
kk = (a2-n2)/100; %间隔
for i =1:100
    nn = n2 + kk*(i-1);
    nn2 = nn + kk;
    aaa = aa(aa(:,2)>=nn & aa(:,2)<nn2,:);%%寻找对应区间
    bb(i,2) = prctile(aaa(:,1),95);
     bb(i,3) = prctile(aaa(:,1),5);
    bb(i,1) = nn;
end