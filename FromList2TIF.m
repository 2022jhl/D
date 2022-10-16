function [] = FromList2TIF(temp,otpth)
stand = double(imread('D:\LUCCPe\Boundary\LUC1995.tif'));
stand(stand==stand(1,1))=-9999;

%temp = load(inpth);
    ottif = stand;
    m=1;
    for i =1:1312
        for j =1:2288
            if stand(i,j)~=-9999
                ottif(i,j)=temp(m);
                m=m+1;
            end
        end
    end
    %% save

    str = {'ncols    2288';
        'nrows    1312';
        'xllcorner     100.87897902923272';
        'yllcorner     34.903259925559198';
        'cellsize    0.0104014159280345';
        'NODATA_value    -9999'};
    
    
    fid=fopen(otpth,'wt');%%同时修改文件�?
    for j=1:6
        fprintf(fid,'%s\n',str{j,:});
    end
    fclose(fid);
    
    fid2 = fopen(otpth,'a+');%%同时修改文件�?
    ffff = '%.9f ';
    [x,y] = size(ottif);
    ffffff = repmat(ffff,1,y);
    for  mmmm=1:x
        fprintf(fid2,[ffffff,'\n'],ottif(mmmm,:));
    end
    fclose(fid2);
end
