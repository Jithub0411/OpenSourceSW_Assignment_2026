#!/bin/bash

# access.log 전체줄 수
wc -l < data/access.log > results/a01.txt

# srv4 줄 수
grep "srv4" data/access.log | wc -l >> results/a01.txt

# srv4 중 POST 요청 수
grep "srv4" data/access.log | grep "POST" | wc -l >> results/a01.txt

