# -*- coding: utf-8 -*-
"""
Created on Mon Jan  3 12:00:44 2022

@author: JHL
"""

import struct
import os
os.chdir("D://bi2dec")
import multiprocessing
import mnp2txt
def translate2txt(f_in, target_dir):
    new_filename = os.path.basename(f_in).replace('.MPT', '.txt')
    f_out = os.path.join(target_dir, new_filename)
    data = []
    index = 0
    with open(f_in,'rb') as f:
        while True:
            try:
                f.seek(index * 4)
                context = f.read(4)
                a = struct.unpack('f', context)
                data.append(a[0])
                index += 1
            except BaseException as e:
                break
    with open(f_out,'w') as f:
        for d in data:
            f.write('%s\n' %d)


def worker(files, src_dir, target_dir, process_no):
    num_file = len(files)
    for i, file in enumerate(files):
        abs_file_path = os.path.join(src_dir, file)
        translate2txt(abs_file_path, target_dir)
        filename = os.path.basename(file)
        print('进程:', process_no, '当前进程内部进度:', str(i) + '/' + str(num_file), ',文件:', filename)

if __name__ == '__main__':
    src_dir = 'D:/ERO/'

    target_dir = 'D:/ERO/'

    cpu_count = multiprocessing.cpu_count()

    if not os.path.exists(target_dir):
        os.makedirs(target_dir)

    files = os.listdir(src_dir)

    files = [file for file in files if file.endswith('.MPT')]

    num_file_every_cpu = len(files) // cpu_count

    process_pool = multiprocessing.Pool(cpu_count)
    
    for i in range(cpu_count):
        start_index = i * num_file_every_cpu
        end_index = start_index + num_file_every_cpu
        worker_files = files[start_index:end_index]
        process_no = i
        process_pool.apply_async(worker, args=(worker_files, src_dir, target_dir, process_no))

    process_pool.close()
    process_pool.join()
    print('完成并行转换')

    
    def file_name(file_dir = 'D://',flag = ['.MPT']):
        L=[]
        for root, dirs, files in os.walk(file_dir):
            for file in files:
                if os.path.splitext(file)[1] in flag:
                    L.append(os.path.join(root, file))
        return L
    
    kkk = len(files) % 4
    files22 = files[-kkk:]
    
    for i,fn in enumerate(files22):
        ppath = r'D:/ERO/{}'.format(fn)
        mnp2txt.translate2txt(ppath)
    print('完成全部转换')
