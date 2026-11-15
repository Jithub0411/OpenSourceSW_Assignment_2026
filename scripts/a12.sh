#!/bin/bash

# GPL 라이선스 프로젝트 수 출력
grep -c ',GPL,' data/licenses.csv > results/a12.txt

# GPL 라이선스 프로젝트 중 stars 상위 3개 출력
# grep: GPL 프로젝트 추출
# sort: stars를 숫자 내림차순으로 정렬
# head: 상위 3개 출력
grep ',GPL,' data/licenses.csv | sort -t, -k3,3nr | head -n 3 >> results/a12.txt
