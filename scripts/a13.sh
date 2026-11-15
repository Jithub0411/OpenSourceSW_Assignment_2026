#!/bin/bash

# scripts/의 모든 .sh 파일 권한 변경
# 소유자: rwx 4+2+1= 7
# 그룹: r-x 4 + 0 + 1 = 5
# 기타: 없음 0
# 파일 접근 권한: 750
# 모든 sh 파일: *.sh
chmod 750 scripts/*.sh

# ls -l scripts 결과 저장
ls -l scripts > results/a13.txt
