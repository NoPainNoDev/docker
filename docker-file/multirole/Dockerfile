# FROM: 토대가 되는 이미지 지정
# tomcat7(java8) 이미지를 토대로 빌드
FROM tomcat:7-jre8

# WORKDIR: 작업 디렉터리 설정
# /app을 작업 디렉터리로 설정
WORKDIR /app

# RUN: 이미지 빌드시 쉘 명령어를 실행
# 시간대 설정
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# tomcat URI 인코딩 설정
RUN sed -i '0,/<Connector /s//<Connector URIEncoding="UTF-8" /' /usr/local/tomcat/conf/server.xml

# COPY: 이미지에 파일 또는 폴더 추가
# multirole.war 파일을 webapps 폴더에 복사
COPY ./multirole.war /usr/local/tomcat/webapps

# /app 내 excel 폴더 생성
RUN mkdir /app/excel
# excel 파일들을 /app 내 excel 폴더에 복사
COPY ./excel /app/excel