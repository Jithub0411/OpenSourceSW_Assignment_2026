#!/bin/bash

# data/files/d4 아래에서 확장자가 .txt인 파일의 경로를 사전순으로 모두 출력
find data/files/d4 -type f -name '*.txt' | sort > results/a10.txt

# 해당 파일 개수 계산
find data/files/d4 -type f -name '*.txt' | sort | wc -l >> results/a10.txt
