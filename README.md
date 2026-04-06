## 프로젝트 개요 
코디세이 AI/SW 개발 워크스테이션 구축

## 실행 환경
OS : macOS (15.7.4)
쉘 : /bin/zsh
터미널 : zsh 5.9 (x86_64-apple-darwin24.0)
Docker 버전 : 28.5.2
git 버전 : 2.53.0

## 터미널 조작 로그 기록 
``` bash  
c00skgun0932@c5r5s7 test % pwd
/Users/00skgun0932/test
c00skgun0932@c5r5s7 test % ls -al
total 0
drwxr-xr-x   2 c00skgun0932  c00skgun0932   64 Apr  1 19:23 .
drwxr-x---+ 21 c00skgun0932  c00skgun0932  672 Apr  1 19:23 ..
c00skgun0932@c5r5s7 test % cd ..
c00skgun0932@c5r5s7 ~ % cd test 
c00skgun0932@c5r5s7 test % mkdir test1
c00skgun0932@c5r5s7 test % ls     
test1
c00skgun0932@c5r5s7 test % cp -r test1 test2
c00skgun0932@c5r5s7 test % ls
test1	test2
c00skgun0932@c5r5s7 test % rm -r test1
c00skgun0932@c5r5s7 test % ls
test2
c00skgun0932@c5r5s7 test % mv test2 test1
c00skgun0932@c5r5s7 test % ls
test1
c00skgun0932@c5r5s7 test % mv test1 ..
c00skgun0932@c5r5s7 test % ls
c00skgun0932@c5r5s7 test % cd ..
c00skgun0932@c5r5s7 ~ % ls
Desktop		Library		OrbStack	codyssey
Documents	Movies		Pictures	test
Downloads	Music		Public		test1
c00skgun0932@c5r5s7 ~ % 
```

## 권한 실습 및 증거 기록

``` bash
-rw-r--r--  1 c00skgun0932  c00skgun0932  22 Apr  1 19:45 a.py
drwxr-xr-x  2 c00skgun0932  c00skgun0932  64 Apr  1 19:53 a_f
c00skgun0932@c5r5s7 test % chmod 755 a.py
c00skgun0932@c5r5s7 test % ls -l
total 8
-rwxr-xr-x  1 c00skgun0932  c00skgun0932  22 Apr  1 19:45 a.py
drwxr-xr-x  2 c00skgun0932  c00skgun0932  64 Apr  1 19:53 a_f
c00skgun0932@c5r5s7 test % chmod 755 a_f 
c00skgun0932@c5r5s7 test % ls
a.py	a_f
c00skgun0932@c5r5s7 test % ls -al
total 8
drwxr-xr-x   4 c00skgun0932  c00skgun0932  128 Apr  1 19:53 .
drwxr-x---+ 23 c00skgun0932  c00skgun0932  736 Apr  1 19:45 ..
-rwxr-xr-x   1 c00skgun0932  c00skgun0932   22 Apr  1 19:45 a.py
drwxr-xr-x   2 c00skgun0932  c00skgun0932   64 Apr  1 19:53 a_f
c00skgun0932@c5r5s7 test % 

```

## Docker 설치 및 기본 점검

``` bash
c00skgun0932@c5r5s7 test % 
c00skgun0932@c5r5s7 test % docker --version
Docker version 28.5.2, build ecc6942
c00skgun0932@c5r5s7 test % docker info             
Client:
 Version:    28.5.2
 Context:    orbstack
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.29.1
    Path:     /Users/00skgun0932/.docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.40.3
    Path:     /Users/00skgun0932/.docker/cli-plugins/docker-compose

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 28.5.2
 Storage Driver: overlay2
  Backing Filesystem: btrfs
  Supports d_type: true
  Using metacopy: false
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 1c4457e00facac03ce1d75f7b6777a7a851e5c41
 runc version: d842d7719497cc3b774fd71620278ac9e17710e0
 init version: de40ad0
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.17.8-orbstack-00308-g8f9c941121b1
 Operating System: OrbStack
 OSType: linux
 Architecture: x86_64
 CPUs: 6
 Total Memory: 15.67GiB
 Name: orbstack
 ID: 2249340a-0182-4605-a689-27473f209d40
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Experimental: false
 Insecure Registries:
  ::1/128
  127.0.0.0/8
 Live Restore Enabled: false
 Product License: Community Engine
 Default Address Pools:
   Base: 192.168.97.0/24, Size: 24
   Base: 192.168.107.0/24, Size: 24
   Base: 192.168.117.0/24, Size: 24
   Base: 192.168.147.0/24, Size: 24
   Base: 192.168.148.0/24, Size: 24
   Base: 192.168.155.0/24, Size: 24
   Base: 192.168.156.0/24, Size: 24
   Base: 192.168.158.0/24, Size: 24
   Base: 192.168.163.0/24, Size: 24
   Base: 192.168.164.0/24, Size: 24
   Base: 192.168.165.0/24, Size: 24
   Base: 192.168.166.0/24, Size: 24
   Base: 192.168.167.0/24, Size: 24
   Base: 192.168.171.0/24, Size: 24
   Base: 192.168.172.0/24, Size: 24
   Base: 192.168.181.0/24, Size: 24
   Base: 192.168.183.0/24, Size: 24
   Base: 192.168.186.0/24, Size: 24
   Base: 192.168.207.0/24, Size: 24
   Base: 192.168.214.0/24, Size: 24
   Base: 192.168.215.0/24, Size: 24
   Base: 192.168.216.0/24, Size: 24
   Base: 192.168.223.0/24, Size: 24
   Base: 192.168.227.0/24, Size: 24
   Base: 192.168.228.0/24, Size: 24
   Base: 192.168.229.0/24, Size: 24
   Base: 192.168.237.0/24, Size: 24
   Base: 192.168.239.0/24, Size: 24
   Base: 192.168.242.0/24, Size: 24
   Base: 192.168.247.0/24, Size: 24
   Base: fd07:b51a:cc66:d000::/56, Size: 64

WARNING: DOCKER_INSECURE_NO_IPTABLES_RAW is set
c00skgun0932@c5r5s7 test % docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
4f55086f7dd0: Pull complete 
Digest: sha256:452a468a4bf985040037cb6d5392410206e47db9bf5b7278d281f94d1c2d0931
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

c00skgun0932@c5r5s7 test % docker images         
REPOSITORY    TAG       IMAGE ID       CREATED      SIZE
hello-world   latest    e2ac70e7319a   8 days ago   10.1kB
c00skgun0932@c5r5s7 test % 
```

## Docker 기본 운영 명령 수행

``` bash
c00skgun0932@c5r5s7 test % docker images
REPOSITORY    TAG       IMAGE ID       CREATED      SIZE
hello-world   latest    e2ac70e7319a   9 days ago   10.1kB
c00skgun0932@c5r5s7 test % docker run -it ubuntu:22.04 bash
Unable to find image 'ubuntu:22.04' locally
22.04: Pulling from library/ubuntu
de47083ed7d7: Pull complete 
Digest: sha256:5e5b128eb4ff35ee52687c20d081dcc15b8cb55e113247683f435224fc58b956
Status: Downloaded newer image for ubuntu:22.04
root@dceb7e83e35b:/# ^C
root@dceb7e83e35b:/# ls -la 
total 24
drwxr-xr-x   1 root root   6 Apr  2 03:36 .
drwxr-xr-x   1 root root   6 Apr  2 03:36 ..
-rwxr-xr-x   1 root root   0 Apr  2 03:36 .dockerenv
lrwxrwxrwx   1 root root   7 Mar 22 14:07 bin -> usr/bin
drwxr-xr-x   1 root root   0 Apr 18  2022 boot
drwxr-xr-x   5 root root 340 Apr  2 03:36 dev
drwxr-xr-x   1 root root  56 Apr  2 03:36 etc
drwxr-xr-x   1 root root   0 Apr 18  2022 home
lrwxrwxrwx   1 root root   7 Mar 22 14:07 lib -> usr/lib
lrwxrwxrwx   1 root root   9 Mar 22 14:07 lib32 -> usr/lib32
lrwxrwxrwx   1 root root   9 Mar 22 14:07 lib64 -> usr/lib64
lrwxrwxrwx   1 root root  10 Mar 22 14:07 libx32 -> usr/libx32
drwxr-xr-x   1 root root   0 Mar 22 14:07 media
drwxr-xr-x   1 root root   0 Mar 22 14:07 mnt
drwxr-xr-x   1 root root   0 Mar 22 14:07 opt
dr-xr-xr-x 230 root root   0 Apr  2 03:36 proc
drwx------   1 root root  30 Mar 22 14:15 root
drwxr-xr-x   1 root root  32 Mar 22 14:15 run
lrwxrwxrwx   1 root root   8 Mar 22 14:07 sbin -> usr/sbin
drwxr-xr-x   1 root root   0 Mar 22 14:07 srv
dr-xr-xr-x  11 root root   0 Apr  2 03:36 sys
drwxrwxrwt   1 root root   0 Mar 22 14:15 tmp
drwxr-xr-x   1 root root  10 Mar 22 14:07 usr
drwxr-xr-x   1 root root  90 Mar 22 14:15 var
root@dceb7e83e35b:/# echo "Hello from container"
Hello from container
root@dceb7e83e35b:/# exit
exit
c00skgun0932@c5r5s7 test % docker ps -a
CONTAINER ID   IMAGE          COMMAND    CREATED         STATUS                          PORTS     NAMES
dceb7e83e35b   ubuntu:22.04   "bash"     2 minutes ago   Exited (0) About a minute ago             musing_lalande
3f6a1df26083   hello-world    "/hello"   17 hours ago    Exited (0) 17 hours ago                   ecstatic_lichterman
c00skgun0932@c5r5s7 test % docker logs dceb
root@dceb7e83e35b:/# ^C
root@dceb7e83e35b:/# ls -la 
total 24
drwxr-xr-x   1 root root   6 Apr  2 03:36 .
drwxr-xr-x   1 root root   6 Apr  2 03:36 ..
-rwxr-xr-x   1 root root   0 Apr  2 03:36 .dockerenv
lrwxrwxrwx   1 root root   7 Mar 22 14:07 bin -> usr/bin
drwxr-xr-x   1 root root   0 Apr 18  2022 boot
drwxr-xr-x   5 root root 340 Apr  2 03:36 dev
drwxr-xr-x   1 root root  56 Apr  2 03:36 etc
drwxr-xr-x   1 root root   0 Apr 18  2022 home
lrwxrwxrwx   1 root root   7 Mar 22 14:07 lib -> usr/lib
lrwxrwxrwx   1 root root   9 Mar 22 14:07 lib32 -> usr/lib32
lrwxrwxrwx   1 root root   9 Mar 22 14:07 lib64 -> usr/lib64
lrwxrwxrwx   1 root root  10 Mar 22 14:07 libx32 -> usr/libx32
drwxr-xr-x   1 root root   0 Mar 22 14:07 media
drwxr-xr-x   1 root root   0 Mar 22 14:07 mnt
drwxr-xr-x   1 root root   0 Mar 22 14:07 opt
dr-xr-xr-x 230 root root   0 Apr  2 03:36 proc
drwx------   1 root root  30 Mar 22 14:15 root
drwxr-xr-x   1 root root  32 Mar 22 14:15 run
lrwxrwxrwx   1 root root   8 Mar 22 14:07 sbin -> usr/sbin
drwxr-xr-x   1 root root   0 Mar 22 14:07 srv
dr-xr-xr-x  11 root root   0 Apr  2 03:36 sys
drwxrwxrwt   1 root root   0 Mar 22 14:15 tmp
drwxr-xr-x   1 root root  10 Mar 22 14:07 usr
drwxr-xr-x   1 root root  90 Mar 22 14:15 var
root@dceb7e83e35b:/# echo "Hello from container"
Hello from container
root@dceb7e83e35b:/# exit
exit
c00skgun0932@c5r5s7 test % docker logs 3f6a

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/
 ```

 ## 기존 Dockerfile 기반 커스텀 이미지 제작
```bash
c00skgun0932@c5r5s7 test % mkdir phase4
cd phase4
c00skgun0932@c5r5s7 phase4 % echo "<h1>Codyssey AI/SW Workstation Custom Image Test!</h1>" > index.html
zsh: event not found: </h1>
c00skgun0932@c5r5s7 phase4 % echo '<h1>Codyssey AI/SW Workstation Custom Image Test!</h1>' > index.html
c00skgun0932@c5r5s7 phase4 % cat <<EOF > Dockerfile
# 기존 Nginx 최신 버전을 기반으로 시작 (기존 이미지)
FROM nginx:latest

# 방금 만든 index.html 파일을 도커 컨테이너 안의 Nginx 기본 경로로 복사 (커스텀) 
COPY index.html /usr/share/nginx/html/index.html

# 80번 포트를 사용하겠다고 명시
EXPOSE 80
EOF
c00skgun0932@c5r5s7 phase4 % # codyssey-web 이라는 이름에 v1 이라는 태그(버전)를 붙여서 빌드합니다.
docker build -t codyssey-web:v1 .
zsh: no matches found: 태그(버전)를
[+] Building 8.4s (7/7) FINISHED                                docker:orbstack
 => [internal] load build definition from Dockerfile                       0.2s
 => => transferring dockerfile: 339B                                       0.0s
 => [internal] load metadata for docker.io/library/nginx:latest            2.9s
 => [internal] load .dockerignore                                          0.1s
 => => transferring context: 2B                                            0.0s
 => [internal] load build context                                          0.2s
 => => transferring context: 92B                                           0.0s
 => [1/2] FROM docker.io/library/nginx:latest@sha256:7150b3a39203cb5bee61  4.2s
 => => resolve docker.io/library/nginx:latest@sha256:7150b3a39203cb5bee61  0.2s
 => => sha256:7150b3a39203cb5bee612ff4a9d18774f8c7caf63 10.23kB / 10.23kB  0.0s
 => => sha256:0cf1d6af5ca72e2ca196afdbdbe26d96f141bd3dc14 9.09kB / 9.09kB  0.0s
 => => sha256:ec781dee3f4719c2ca0dd9e73cb1d4ed834ed1a40 29.78MB / 29.78MB  0.9s
 => => sha256:c3fe1eeae810f4a585961f17339c93f0fb1c7c8d5c0 2.29kB / 2.29kB  0.0s
 => => sha256:bb3d0aa29654655a18d97605cd63947d39ca5166d 33.16MB / 33.16MB  1.2s
 => => sha256:510ddf6557d618d548b6f7680a84dfa925fea17316d3352 626B / 626B  1.0s
 => => sha256:cde7a05ae42831ee510e8948b80b25c297a1080875a3479 955B / 955B  1.4s
 => => extracting sha256:ec781dee3f4719c2ca0dd9e73cb1d4ed834ed1a406495eb6  1.1s
 => => sha256:587e3d84dbb5b5fc406b2b292318c9a446e72c144ad849b 402B / 402B  1.4s
 => => sha256:3189680c601f46244f1706d0d197ddb415d9bb75423 1.21kB / 1.21kB  1.7s
 => => sha256:5e815e07e5699b40479214a6a2a30d647495d99cd0f 1.40kB / 1.40kB  1.9s
 => => extracting sha256:bb3d0aa29654655a18d97605cd63947d39ca5166d44c3341  0.7s
 => => extracting sha256:510ddf6557d618d548b6f7680a84dfa925fea17316d33526  0.0s
 => => extracting sha256:cde7a05ae42831ee510e8948b80b25c297a1080875a3479c  0.0s
 => => extracting sha256:587e3d84dbb5b5fc406b2b292318c9a446e72c144ad849b5  0.0s
 => => extracting sha256:3189680c601f46244f1706d0d197ddb415d9bb754236c042  0.0s
 => => extracting sha256:5e815e07e5699b40479214a6a2a30d647495d99cd0f253ee  0.0s
 => [2/2] COPY index.html /usr/share/nginx/html/index.html                 0.4s
 => exporting to image                                                     0.2s
 => => exporting layers                                                    0.1s
 => => writing image sha256:251fa2827014b62407a5e5f41419e9b47366f27375e69  0.0s
 => => naming to docker.io/library/codyssey-web:v1                         0.0s
c00skgun0932@c5r5s7 phase4 % docker run -d -p 8080:80 --name my-custom-server codyssey-web:v1
a3f88de9d083980b8857edba0352b8149788098039ff8c51432563a82c219ff4
c00skgun0932@c5r5s7 phase4 % # 터미널에서 바로 확인하는 방법 (아까 적은 <h1>~</h1> 내용이 출력되면 성공!)
curl http://localhost:8080
zsh: event not found: )
c00skgun0932@c5r5s7 phase4 % curl http://localhost:8080
<h1>Codyssey AI/SW Workstation Custom Image Test!</h1>
c00skgun0932@c5r5s7 phase4 % docker logs my-web-server
Error response from daemon: No such container: my-web-server
c00skgun0932@c5r5s7 phase4 % docker ps -a
CONTAINER ID   IMAGE             COMMAND                  CREATED             STATUS                         PORTS                                     NAMES
a3f88de9d083   codyssey-web:v1   "/docker-entrypoint.…"   20 minutes ago      Up 20 minutes                  0.0.0.0:8080->80/tcp, [::]:8080->80/tcp   my-custom-server
dceb7e83e35b   ubuntu:22.04      "bash"                   About an hour ago   Exited (0) About an hour ago                                             musing_lalande
3f6a1df26083   hello-world       "/hello"                 18 hours ago        Exited (0) 18 hours ago                                                  ecstatic_lichterman
c00skgun0932@c5r5s7 phase4 % docker logs a3f88         
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Sourcing /docker-entrypoint.d/15-local-resolvers.envsh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
2026/04/02 04:17:21 [notice] 1#1: using the "epoll" event method
2026/04/02 04:17:21 [notice] 1#1: nginx/1.29.7
2026/04/02 04:17:21 [notice] 1#1: built by gcc 14.2.0 (Debian 14.2.0-19) 
2026/04/02 04:17:21 [notice] 1#1: OS: Linux 6.17.8-orbstack-00308-g8f9c941121b1
2026/04/02 04:17:21 [notice] 1#1: getrlimit(RLIMIT_NOFILE): 20480:1048576
2026/04/02 04:17:21 [notice] 1#1: start worker processes
2026/04/02 04:17:21 [notice] 1#1: start worker process 29
2026/04/02 04:17:21 [notice] 1#1: start worker process 30
2026/04/02 04:17:21 [notice] 1#1: start worker process 31
2026/04/02 04:17:21 [notice] 1#1: start worker process 32
2026/04/02 04:17:21 [notice] 1#1: start worker process 33
2026/04/02 04:17:21 [notice] 1#1: start worker process 34
192.168.215.1 - - [02/Apr/2026:04:17:54 +0000] "GET / HTTP/1.1" 200 55 "-" "curl/8.7.1" "-"
192.168.215.1 - - [02/Apr/2026:04:19:20 +0000] "GET / HTTP/1.1" 200 55 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15" "-"
2026/04/02 04:19:20 [error] 30#30: *2 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 192.168.215.1, server: localhost, request: "GET /favicon.ico HTTP/1.1", host: "localhost:8080", referrer: "http://localhost:8080/"
192.168.215.1 - - [02/Apr/2026:04:19:20 +0000] "GET /favicon.ico HTTP/1.1" 404 153 "http://localhost:8080/" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15" "-"
```
