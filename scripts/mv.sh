#!/bin/bash

# 检查输入参数的个数
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <target_path>"
    exit 1
fi

# 读取输入的目标路径和本地路径
target_path=$1
#mv ${target_path}/store_sales_ext/store_returns_*.dat ${target_path}/store_returns_ext/
#mv ${target_path}/web_sales_ext/web_returns_*.dat ${target_path}/web_returns_ext/
#mv ${target_path}/catalog_sales_ext/catalog_returns_*.dat ${target_path}/catalog_returns_ext/
for item in ${target_path}/store_sales_ext/store_returns_*.dat; do
    mv $item ${target_path}/store_returns_ext/
done

for item in ${target_path}/web_sales_ext/store_returns_*.dat; do
    mv $item ${target_path}/web_returns_ext/
done

for item in ${target_path}/catalog_sales_ext/store_returns_*.dat; do
    mv $item ${target_path}/catalog_returns_ext/
done
