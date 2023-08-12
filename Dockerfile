# 베이스 이미지 선택
FROM ubuntu:latest

# 환경변수 설정
ENV ENV_HOST_NAME=docker_user

# 작업 디렉토리 설정
WORKDIR /app

COPY build/libs/dockerproject-0.0.1-SNAPSHOT.jar ./dockerproject-0.0.1-SNAPSHOT.jar

# 포트 8080 노출
EXPOSE 8080

# 패키지 업데이트 및 필요한 패키지 설치
RUN apt-get update && apt-get install -y openjdk-11-jdk

# 서버 실행
CMD ["java", "-jar", "dockerproject-0.0.1-SNAPSHOT.jar"]