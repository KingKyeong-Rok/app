# Base image 설정 (예: OpenJDK)
FROM FROM openjdk:17-jre

# 애플리케이션 JAR 파일을 컨테이너에 복사
COPY boot-0.0.1-SNAPSHOT.jar /app.jar

# 컨테이너 시작 시 실행될 명령어
ENTRYPOINT ["java","-jar","/app.jar"]
