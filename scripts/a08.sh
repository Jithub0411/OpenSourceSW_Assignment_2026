#!/bin/bash

# scores.csv에서 학과 E의 학생수
grep ',E,' data/scores.csv | wc -l > results/a08.txt

# 중간고사(mideterm) 평균(소수점 둘째자리)
grep ',E,' data/scores.csv | awk -F',' '{sum += $4; count++} END {printf "%.2f\n", sum/count}' >> results/a08.txt

# 중간고사 최고점 학생 이름과 점수
grep ',E,' data/scores.csv | sort -t',' -k4,4nr | head -n 1 | awk -F',' '{print $2, $4}' >> results/a08.txt
