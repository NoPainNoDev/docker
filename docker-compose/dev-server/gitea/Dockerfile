# get centos 7 image
FROM --platform=linux/x86_64 gitea/gitea

# 작업 디렉토리 설정 (Gitea의 기본 디렉토리는 /data/git 에 설치됩니다)
WORKDIR /app

# # # Docker 컨테이너 시작 시 실행될 명령
# COPY ./backup/gitea-dump/ /app/

# Debug
# RUN ls -al /app && sleep 10
# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh
# ENTRYPOINT [ "/entrypoint.sh" ]
