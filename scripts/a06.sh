#!/bin/bash

# srv4 전송 바이트(7번째 필드)의 합계와 평균을 소수점 둘째자리까지 출력
awk '$8 == "srv4" {sum += $7; count++} END {printf "Total Bytes Transferred: %.0f\nAverage Bytes Transferred: %.2f\n", sum, sum/count'} data/access.log > results/a06.txt
