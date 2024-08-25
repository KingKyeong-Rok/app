# Java 17 기반의 이미지를 사용합니다.
FROM openjdk:17-jdk-alpine

# JAR 파일을 컨테이너로 복사합니다.
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 애플리케이션을 실행합니다.
ENTRYPOINT ["java","-jar","/app.jar"]
