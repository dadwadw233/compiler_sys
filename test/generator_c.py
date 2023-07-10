import glob
import os
import shutil
import time

target_path = "./c_test"
sy_list = glob.glob('*.sy')
sum_time = 0
for f in sy_list:
    with open(f, 'r') as source_file, open(target_path+'/'+f.split(".")[0]+'.c', 'w') as destination_file:

        destination_file.write('#include "sylib.h"\n')

    # 将原始文件的内容写入目标文件
        for line in source_file:
            destination_file.write(line)

c_list = glob.glob("c_test/*.c")

for f in c_list:
    if f == "c_test/sylib.c":
        continue
    print(f)
    cmd = "clang++ -o3 -w -target riscv64-unknown-elf ./c_test/sylib.c "+f+" -o " + f.split(".")[0] + ".out"

    start_time = time.time()
    os.system(cmd)
    end_time = time.time()
    cmd = "clang++ -o3 -S -w -target riscv64-unknown-elf "+f+" "+ f.split(".")[0]+".s"
    os.system(cmd)
    run_time = end_time - start_time
    sum_time += run_time
    print("编译时间：", run_time, "秒")

print('111个测试样例总编译时间： ', sum_time, '秒')

total_size = 0
target_file_list = glob.glob("./c_test/*.out")
for file in target_file_list:
    total_size += os.path.getsize(file)

# 打印总大小
print("目标文件总大小:", total_size, "bytes")

