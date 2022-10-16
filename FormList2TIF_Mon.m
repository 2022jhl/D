stand = double(imread('D:\LUCCPe\Boundary\LUC1995.tif'));
stand(stand==stand(1,1))=-9999;
fnm0 = dir('D:\ERO\*06.txt');
for ff = 1:1
    temp0 = load(['D:\ERO\',fnm0(ff).name]);
    fnm = fnm0;
    for tt =1:12
        temp = temp0;
        temp2 = temp(712960*tt-712959:712960*tt,1);
        ottif = stand;
        m=1;
        for i =1:1312
            for j =1:2288
                if stand(i,j)~=-9999
                    ottif(i,j)=temp2(m);
                    m=m+1;
                end
            end
        end
        
        %% save
        yy = fnm(ff).name;
        yyy = str2double(yy(length(yy)-5:length(yy)-4));
        pth =['D:\ERO\EROWATER_',num2str(yyy+1981),'_',num2str(tt),'.txt'];
        str = {'ncols    2288';
            'nrows    1312';
            'xllcorner     100.87897902923272';
            'yllcorner     34.903259925559198';
            'cellsize    0.0104014159280345';
            'NODATA_value    -9999'};
        
        fid=fopen(pth,'wt');%%?
        for j=1:6
            fprintf(fid,'%s\n',str{j,:});
        end
        fclose(fid);
        
        fid2 = fopen(pth,'a+');%%?
        ffff = '%.15f ';
        [x,y] = size(ottif);
        ffffff = repmat(ffff,1,y);
        for  mmmm=1:x
            fprintf(fid2,[ffffff,'\n'],ottif(mmmm,:));
        end
        fclose(fid2);
    end
end