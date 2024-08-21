FROM openjdk:11-jre-slim

# JAR 파일을 컨테이너 이미지 내에 복사
COPY boot-0.0.1-SNAPSHOT.jar /app/my-app.jar

# JAR 파일을 실행하도록 설정
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]
