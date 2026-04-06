# 기존 Nginx 최신 버전을 기반으로 시작 (기존 이미지)
FROM nginx:latest

# 방금 만든 index.html 파일을 도커 컨테이너 안의 Nginx 기본 경로로 복사 (커스텀)
COPY index.html /usr/share/nginx/html/index.html

# 80번 포트를 사용하겠다고 명시
EXPOSE 80
