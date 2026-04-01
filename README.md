## 프로젝트 개요 
코디세이 AI/SW 개발 워크스테이션 구축

## 실행 환경
OS : macOS (15.7.4)
쉘 : /bin/zsh
터미널 : zsh 5.9 (x86_64-apple-darwin24.0)
Docker 버전 : 28.5.2
git 버전 : 2.53.0

## 터미널 조작 로그 기록 
''' bash  
$ docker ps
CONTAINER ID   IMAGE     COMMAND   CREATED         STATUS         PORTS                  NAMES
f3ed58fc9a12   my-app    "nginx"   2 minutes ago   Up 2 minutes   0.0.0.0:8080->80/tcp   web-server
$ echo "이런 식으로 명령어 앞에 $ 기호를 붙여줍니다."