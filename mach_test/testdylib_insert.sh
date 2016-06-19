#!/bin/bash
rm testdylib.tar.gz 2> /dev/null 1> /dev/null
tar cvzf testdylib.tar.gz ../mach_override testdylib.h testdylib.c 2> /dev/null 1> /dev/null
my_file_to_pointer ./testdylib.tar.gz testdylib_tar_gz.c
out=$(ls -la testdylib.tar.gz | cut -d' ' -f8)
sed -i.bak s/"\ char\ \*\ b\ =\ (char\*)malloc(\ ${out}\ );"/"\ static\ \*\ char\ b[${out}];\ if(x!=0)\ return\ b;\ }"/g testdylib_tar_gz.c
sed -i.bak s/"lib_memory()"/"file_testdylib_tar_gz_${out}()"/g testdylib_tar_gz.c
