#!/bin/bash

# 使用 gawk 筛选 Pclass 为 2 且 Embarked 为 S 的乘客，并将结果保存到 output.csv
gawk -F, '$3 == 2 && $13 ~ /S\s*/ && $7 != "" {
    # 累加年龄
    sum += $7;
    count++;

    # 输出处理后的记录
    print $0;
}' titanic.csv | sed 's/\bfemale\b/F/g' | sed 's/\bmale\b/M/g' > output.csv

# 打印平均年龄到终端
gawk -F, '$3 == 2 && $13 ~ /S\s*/ && $7 != "" { sum += $7; count++ }
END { if (count > 0) print "Average Age:", sum / count; else print "No valid ages found." }' titanic.csv

echo "Filtered results saved in output.csv."
