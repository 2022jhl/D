#-*- coding:utf-8 -*-
import os
os.chdir('C:/Users/admin/Desktop/bi2dec')
#转换MPN OBS  INI到 txt
import mnp2txt
import txt2ini



#转换MPN OBS  INI到 txt
def file_name(file_dir = r'C:\Users\admin\Desktop\bi2dec',flag = ['.MPN']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = r'D:\R_TESim_Sce_2\6RESU\3ChangeEF\3_TypicalSteppe\3_Typical_Steppe\S0'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    mnp2txt.translate2txt(fn)
print(fnames)

