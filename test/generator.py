import os
import subprocess
import filecmp
import time
import glob

from tqdm import tqdm

test_root = "./"
compiler_root = "../build/src/llvm-builder"
sy_file_list = [f for f in os.listdir('./') if f.endswith('.sy')]
pass_cnt = 0
visual = False
fail_list = []
sum_time = 0
for f in sy_file_list:
    file_name = f
    prefix = file_name.split(".")[0]
    cmd = "sudo " + compiler_root + "/./naive-compiler " + test_root + file_name
    print('-------------compiler------------')
    #subprocess.run(cmd, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    start_time = time.time()
    os.system(cmd)
    end_time = time.time()

    run_time = end_time - start_time
    sum_time+=run_time
    print("编译时间：", run_time, "秒")
    print('-------------running------------')
    # os.system("qemu-riscv64 " + prefix)

    command = ["qemu-riscv64 " + prefix + '.sysyexe']

    process = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                               text=True, shell=True)

    input_flag = False
    input_data = ''
    if os.path.exists(prefix + '.in'):
        input_flag = True
        with open(test_root + prefix + '.in', 'r') as input_file:
            lines = input_file.readline()
            while lines:
                input_data += lines
                lines = input_file.readline()
        input_data += '\n'


    if input_flag:
        process.stdin.write(input_data)
        process.stdin.flush()

    # 读取程序的输出
    output = process.stdout.read().strip(' ')

    # 关闭输入、输出管道，并等待程序执行完成
    process.stdin.close()
    process.stdout.close()
    process.wait()

    error = process.stderr.read().strip(' ')
    print("输出:\n", output)
    print("返回值：\n", process.returncode)
    print("errmsg:" + error)

    print('-------------checking------------')
    output_filename = prefix+'.test'
    with open(test_root+output_filename, 'w') as out_f:
        out_f.write(output.rstrip('\n'))
        if output != '':
            out_f.write('\n')
        out_f.write(str(process.returncode)+'\n')
    result = filecmp.cmp(test_root+output_filename, test_root+prefix+'.out')
    if result:
        print('pass')
        pass_cnt+=1
    else:
        print('wrong result')
        fail_list.append(prefix)
    print('-------------check finish------------')

total_size = 0
target_file_list = glob.glob("*.sysyexe")
for file in target_file_list:
    total_size += os.path.getsize(file)

# 打印总大小
print("目标文件总大小:", total_size, "bytes")

total_size = 0
target_file_list = glob.glob("*.ll")
for file in target_file_list:
    total_size += os.path.getsize(file)

# 打印总大小
print("IR文件总大小:", total_size, "bytes")
print('测试样例总数：', len(sy_file_list))
print('通过数量： ', pass_cnt)
print('未通过列表： ', sorted(fail_list))
print('111个测试样例总编译时间： ', sum_time, '秒')