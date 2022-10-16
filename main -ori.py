#-*- coding:utf-8 -*-
#转换MPN OBS  INI到 txt
import mnp2txt
import txt2ini
import os


#转换MPN OBS  INI到 txt
def file_name(file_dir = r'D:\R_TESim_Sce\1NPP_et\1Year_index_MPN\S1',flag = ['.MPN']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L

lis=range(0,8)
for j in lis:
    path = r'D:\R_TESim_Sce\1NPP_et\1Year_index_MPN\S{}'.format(j)
    
    fnames = file_name(path)
    for i,f_in in enumerate(fnames):
        print('正在转换:',i+1,f_in)
        mnp2txt.translate2txt(f_in)
        print(fnames)
    
  



#转换MPN OBS  INI到 txt
def file_name(file_dir = 'D:\\R_TESim\\1980',flag = ['.MPN']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'D:\\R_TESim\\1980'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    mnp2txt.translate2txt(fn)
print(fnames)


#转换txt到 INI或者OBS
import os
os.chdir('C:/Users/admin/Desktop/bi2dec')
#转换MPN OBS  INI到 txt
import mnp2txt
import txt2ini

def file_name(file_dir = 'D:\Suibility_Cropland\6_INI_OBS_2\S8_INI_1col\',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'D:\Suibility_Cropland\6_INI_OBS_2\S8_INI_1col\'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='INI')
print(fnames)


#转换txt到 ini
def file_name(file_dir = 'data\\VEG_1995_INI_txt_Line',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'data\\VEG_1995_INI_txt_Line'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='INI')
print(fnames)

#转换txt到 ini
import os
os.chdir('C:/Users/admin/Desktop/bi2dec')
#转换MPN OBS  INI到 txt
import mnp2txt
import txt2ini
def file_name(file_dir = 'D:\\Suibility_Cropland\\4_Scenarios_2\\S8',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'D:\\Suibility_Cropland\\4_Scenarios_2\\S8' #注意路径要用“\\”

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='OBS')
print(fnames)

#转换txt到 ini
def file_name(file_dir = 'data\\VEG_2005_INI_txt_Line',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'data\\VEG_2005_INI_txt_Line'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='INI')
print(fnames)

#转换txt到 ini
def file_name(file_dir = 'data\\VEG_2010_INI_txt_Line',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = 'data\\VEG_2010_INI_txt_Line'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='INI')
print(fnames)

#转换txt到 ini
def file_name(file_dir = r'D:\Suibility_Cropland\4_Scenarios\S1',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L


path = r'D:\Suibility_Cropland\4_Scenarios\S1'

fnames = file_name(path)
for i,fn in enumerate(fnames):
    print('正在转换:',i+1,fn)
    txt2ini.translate2INI(fn,hz='OBS')
print(fnames)


###循环

import mnp2txt
import txt2ini
import os


#转换TXT到MPN OBS
def file_name(file_dir = r'D:\R_TESim_Sce\1NPP_et\1Year_index_MPN\S1',flag = ['.txt']):
    L=[]
    for root, dirs, files in os.walk(file_dir):
        for file in files:
            if os.path.splitext(file)[1] in flag:
                L.append(os.path.join(root, file))
    return L

lis=range(0,8)
for j in lis:
    path = r'D:\Suibility_Cropland\4_Scenarios_2\S{}'.format(j)
    fnames = file_name(path)
    for i,fn in enumerate(fnames):
        print('正在转换:',i+1,fn)
        txt2ini.translate2INI(fn,hz='OBS')
    print(fnames)
