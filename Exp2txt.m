 
function [] = Exp2txt(I_d_all,pth)

    %pth =['D:\Suibility_Cropland\2_single_suitability\','Suit0_Not1','.txt'];   %change
    ottif = I_d_all;   %change
    str = {'ncols    720';
        'nrows    360';
        'xllcorner     0.25';
        'yllcorner     -89.75';
        'cellsize    0.5';
        'NODATA_value    -9999'};
    
    fid=fopen(pth,'wt');%%同时修改文件�?
    for j=1:6
        fprintf(fid,'%s\n',str{j,:});
    end
    fclose(fid);
    
    fid2 = fopen(pth,'a+');%%同时修改文件�?
    ffff = '%.15f ';
    [x,y] = size(ottif);
    ffffff = repmat(ffff,1,y);
    for  mmmm=1:x
        fprintf(fid2,[ffffff,'\n'],ottif(mmmm,:));
    end
    fclose(fid2);
