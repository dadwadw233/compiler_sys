import os
import glob

from tqdm import tqdm

obj_list = glob.glob("*.o")
ll_list = glob.glob("*.ll")
test_results = glob.glob("*.test")
asm_list = glob.glob("*.s")
ssa_list = glob.glob("*.ssa")
target_list = glob.glob("*.sysyexe")
target_list_c = glob.glob("./c_test/*.out")
print("delete obj files")
for file_path in tqdm(obj_list):
    os.remove(file_path)

print("delete IR files")
for file_path in tqdm(ll_list):
    os.remove(file_path)

print("delete Assembly files")
for file_path in tqdm(asm_list):
    os.remove(file_path)

print("delete test results")
for file_path in tqdm(test_results):
    os.remove(file_path)

print("delete ssa IR")
for file_path in tqdm(ssa_list):
    os.remove(file_path)

print("delete target")
# 获取当前工作目录下所有文件路径列表

for file_path in tqdm(target_list):
    os.remove(file_path)

for file_path in tqdm(target_list_c):
    os.remove(file_path)
