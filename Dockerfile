# 공식 OpenJDK 17 런타임 이미지를 기반으로 합니다.
FROM openjdk:17-jdk-alpine

# 컨테이너 내에서 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# Maven 빌드에서 생성된 JAR 파일을 컨테이너로 복사합니다.
# ARG는 빌드 시 사용할 수 있는 인자를 의미하며, 여기서는 JAR 파일의 경로를 인자로 받습니다.
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 컨테이너 외부에서 접근할 수 있도록 8080 포트를 오픈합니다.
EXPOSE 8080

# JAR 파일을 실행하는 명령어를 정의합니다.
ENTRYPOINT ["java","-jar","/app/app.jar"]

