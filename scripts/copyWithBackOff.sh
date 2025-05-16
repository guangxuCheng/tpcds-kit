#!/bin/bash

# 检查输入参数的个数
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_path> <local_path>"
    exit 1
fi

# 读取输入的目标路径和本地路径
target_path=$1
local_path=$2

# 检查本地路径是否存在
if [ ! -d "$local_path" ]; then
    echo "Error: Local path '$local_path' does not exist."
    exit 1
fi

# 遍历本地路径下的所有文件和目录
#for item in "$local_path"/*; do
#    if [ -d "$item" ]; then
#        # 处理目录
#        subdir=$(basename "$item")
#        mkdir -p "$target_path/$subdir"
#        cp -r "$item"/* "$target_path/$subdir/"
#    elif [ -f "$item" ]; then
#        # 处理文件
#        cp "$item" "$target_path/"
#    fi
#done

# 遍历本地路径下的所有文件和目录
for item in "$local_path"/*; do
    if [ -d "$item" ]; then
        # 处理目录
        subdir=$(basename "$item")
        mkdir -p "$target_path/$subdir"
        if [[ "$subdir" == *"store_sales"* ]]; then
          mkdir -p "$target_path/store_returns"
          cp "$item"/store_sales* "$target_path/store_sales/"
          cp "$item"/store_returns* "$target_path/store_returns/"
        elif [[ "$subdir" == *"web_sales"* ]]; then
          mkdir -p "$target_path/web_returns"
          cp "$item"/web_sales* "$target_path/web_sales/"
          cp "$item"/web_returns* "$target_path/web_returns/"
        elif [[ "$subdir" == *"catalog_sales"* ]]; then
          mkdir -p "$target_path/catalog_returns"
          cp "$item"/catalog_sales* "$target_path/catalog_sales/"
          cp "$item"/catalog_returns* "$target_path/catalog_returns/"
        else 
          cp -r "$item"/* "$target_path/$subdir/"
        fi
    elif [ -f "$item" ]; then
        # 处理文件
        cp "$item" "$target_path/"
    fi
done
