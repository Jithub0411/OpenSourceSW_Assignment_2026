#!/bin/bash

# grep: srv4 서버의 기록 추출
# awk: IP주소인 3번 필드에서 IP 주소 추출
# sort: IP주소별로 정렬
# uniq -c:  IP별 요청 수 계산
# sort -nr: 요청 횟수가 많은 순서대로 정렬
# head: 가장 많이 접속한 IP 상위 5개를 출력
# 결과를 a03.txt에 저장

grep "srv4" data/access.log | awk '{print $3}' | sort | uniq -c | sort -nr | head -n 5 > results/a03.txt


