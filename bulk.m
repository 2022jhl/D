prop = [1	1	7.5	15	1.395
1	2	27.5	25	1.374
1	3	60	40	1.388
1	4	130	100	1.367
2	1	7.5	15	1.402
2	2	27.5	25	1.374
2	3	60	40	1.465
2	4	130	100	1.465
3	1	7.5	15	1.416
3	2	27.5	25	1.409
3	3	60	40	1.409
3	4	130	100	1.409
4	1	7.5	15	1.423
4	2	27.5	25	1.416
4	3	60	40	1.416
4	4	130	100	1.416
5	1	7.5	15	1.346
5	2	27.5	25	1.395
5	3	60	40	1.416
5	4	130	100	1.423
6	1	7.5	15	1.395
6	2	27.5	25	1.381
6	3	60	40	1.381
6	4	130	100	1.402
7	1	7.5	15	1.423
7	2	27.5	25	1.437
7	3	60	40	1.451
7	4	130	100	1.451
8	1	7.5	15	1.416
8	2	27.5	25	1.416
8	3	60	40	1.409
8	4	130	100	1.409
9	1	7.5	15	1.332
9	2	27.5	25	1.402
9	3	60	40	1.451
9	4	130	100	1.451
10	1	7.5	15	1.465
10	2	27.5	25	1.465
10	3	60	40	1.472
10	4	130	100	1.479
];

sl = load('D:\LUCCPe\1BioPhysical_from_TESim\SOILGRID.mat'); sl = sl.soil;

for j=1:4
for i =1:10
   idx= sl(:,1)==i ; 
   db = prop(prop(:,1) == i & prop(:,2)==j,4);
   sl(idx,j+1) = db; 
end
end

for k =2:5
   kk = sl(:,k); 
   pth = ['D:\LUCCPe\1BioPhysical_from_TESim\THCK',num2str(k-1),'.mat'];
   save(pth,'kk');
end

for j=1:4
for i =1:10
   idx= sl(:,1)==i ; 
   db = prop(prop(:,1) == i & prop(:,2)==j,5);
   sl(idx,j+1) = db; 
end
end

for k =2:5
   kk = sl(:,k); 
   pth = ['D:\LUCCPe\1BioPhysical_from_TESim\DBLK',num2str(k-1),'.mat'];
   save(pth,'kk');
end




