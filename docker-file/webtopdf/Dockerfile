# FROM: 토대가 되는 이미지 지정
# x86_64 CPU 아키텍처로 작동, centos7 이미지를 토대로 빌드
FROM --platform=linux/x86_64 centos:7

# SHELL: 기본 쉘 설정
# 기본 쉘 을 bash로 설정
SHELL ["/bin/bash", "-c"]   

# WORKDIR: 작업 디렉터리 설정
# /app을 작업 디렉터리로 설정
WORKDIR /app
# VOLUME: 볼륨 디렉터리 설정
# /app을 볼륨 디렉터리로 설정
VOLUME /app

# RUN: 이미지 빌드시 쉘 명령어를 실행
# 시간대 설정
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# 패키지 매니저 업데이트
RUN ulimit -n 1024 && yum update -y

# 업데이트 및 필요한 작업을 위한 패키지 설치
RUN ulimit -n 1024 && yum install -y epel-release wget unzip fonts-korean tree git ImageMagick && \
    ulimit -n 1024 && yum install -y nodejs && \
    ulimit -n 1024 && yum install -y npm

# yarn 설치
RUN npm install -g yarn

# google chrome 설치
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm && \
    ulimit -n 1024 && yum install -y ./google-chrome-stable_current_*.rpm && \
    rm -rf ./google-chrome-stable_current_*.rpm

# 폰트 설치 
RUN mkdir /usr/share/fonts/nanumfont && \
    curl -O http://cdn.naver.com/naver/NanumFont/fontfiles/NanumFont_TTF_ALL.zip && \
    unzip NanumFont_TTF_ALL.zip -d /usr/share/fonts/nanumfont && \
    fc-cache -f -v && \
    rm -rf ./NanumFont_TTF_ALL.zip

# ADD: 이미지에 파일 또는 폴더 추가 (=COPY) 
# webtopdf.tar.gz을 압축해제하여 /app에 추가
ADD webtopdf.tar.gz /app

# puppeteer 모듈 추가
RUN yarn add puppeteer@20.5.0

# CMD: 컨테이너 실행시 실행할 명령어
# yarn 실행
CMD ["yarn", "run", "start"]
