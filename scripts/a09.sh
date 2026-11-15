#!/bin/bash

# 학과 E 학생 이름의 첫 글자만 대문자로 바꿔 순서대로 출력
grep ',E,' data/scores.csv | sed 's/^[^,]*,//; s/,.*//; s/^[a-z]/\U&/' > results/a09.txt
