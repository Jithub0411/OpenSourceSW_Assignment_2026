#!/bin/bash

# srv4 기록의 상태코드별 건수 출력

# grep: srv4가 포함된 로그를 추출
# awk:  6번째 필드인 상태 코드만 추출
# sort: 같은 상태 코드끼리 모이도록 정렬
# uniq: 각 상태코드가 몇 번 등장하는지 계산
# 결과를 a02.txt로 저장

grep "srv4" data/access.log | awk '{print $6}' | sort | uniq -c > results/a02.txt

