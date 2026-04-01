# 1️⃣ 현재 위치 확인
pwd
# 출력: /Users/yourname (또는 /home/yourname)

# 2️⃣ 작업 폴더 생성
mkdir -p ~/codyssey/docker-practice
cd ~/codyssey/docker-practice

# 3️⃣ 파일 생성 및 권한 확인
touch app.py
ls -l app.py
# 출력: -rw-r--r-- 1 user staff 0 Jan 15 10:30 app.py

# 4️⃣ 권한 변경 실습
chmod 755 app.py  # 소유자: 읽기/쓰기/실행, 그룹/다른사용자: 읽기/실행
ls -l app.py
# 출력: -rwxr-xr-x 1 user staff 0 Jan 15 10:30 app.py

# 5️⃣ 디렉토리 권한 변경
mkdir test-dir
chmod 700 test-dir  # 소유자만 모든 권한
ls -ld test-dir
# 출력: drwx------ 2 user staff 64 Jan 15 10:30 test-dir
