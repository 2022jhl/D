#-*- coding:utf-8 -*-
import struct
import os


def translate2txt(f_in = 'WPSB.INI'):
    fs = f_in.split('.')[:-1]
    fs.append('.txt')
    f_out = ''.join(fs)
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
            f.write('%s\n'%d)


# translate2txt('test.MPN')