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
