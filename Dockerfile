# Java 런타임 환경을 포함하는 베이스 이미지 선택
FROM openjdk:11-jre-slim

# JAR 파일을 컨테이너 이미지 내에 복사
COPY target/my-app.jar /app/my-app.jar

# JAR 파일을 실행하도록 설정
ENTRYPOINT ["java", "-jar", "/app/my-app.jar"]