#!/bin/bash

# srv4에서 상태코드가 500인 줄만 results/srv4_500.log에 저장
awk '$8 == "srv4" && $6 == 500' data/access.log > results/srv4_500.log

# 해당 추출한 오류 로그의 전체 줄 수 저장
wc -l <  results/srv4_500.log > results/a05.txt

# 마지막 3줄을 출력
tail -n 3 results/srv4_500.log >> results/a05.txt
