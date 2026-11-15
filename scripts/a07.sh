#!/bin/bash

# srv4 기록의 처음 10줄에서 서버이름을 SERVER-4로, 메서드 GET을 get으로 바꿔 출력
grep "srv4" data/access.log | head -n 10 | sed 's/srv4/SERVER-4/g; s/GET/get/g' > results/a07.txt
