#!/bin/bash

# 2026년 9월 '17'일 '16'시 전체 서버가 받은 요청 수 출력
# grep: 2026년 9월 17일(D:17) 16시(H:16)의 로그를 추출
# wc: 추출된 로그의 줄 수 계산
# 결과를 results/a04.txt에 저장

grep "2026-09-17 16:" data/access.log | wc -l > results/a04.txt
