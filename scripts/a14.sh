#!/bin/bash

# 저장소 최상위에 results/a03.txt를 가리키는 심볼릭 링크 top_ip 만들기
# ln -s만 할 경우 반복 실행시 오류 발생: ln: failed to create symbolic link 'top_ip': File exists
# ln -s -> ln -sfn 으로 변경
# -f: 동일한 이름의 파일이나 링크가 있으면 교체,
# -n: 대상이 디렉터리 심볼링 링크여도 그 안에 생성하지 않도록 처리  
ln -sfn results/a03.txt top_ip

# ls -l top_ip 결과 저장
# ls -l: 생성된 심볼릭 링크 정보 확인
ls -l top_ip > results/a14.txt
