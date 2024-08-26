# 공식 OpenJDK 17 런타임 이미지를 기반으로 합니다.
FROM openjdk:17-jdk-alpine

# 컨테이너 내에서 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# Maven Wrapper 스크립트(mvnw)와 필요한 파일들을 복사합니다.
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# 의존성 및 플러그인 다운로드
RUN ./mvnw dependency:resolve

# 소스 코드 및 기타 파일들을 복사합니다.
COPY src ./src

# 애플리케이션을 빌드합니다.
RUN ./mvnw clean package

# mvnw에 실행 권한을 부여합니다.
RUN chmod +x mvnw

# 컨테이너 외부에서 접근할 수 있도록 8080 포트를 오픈합니다.
EXPOSE 80

# JAR 파일을 실행하는 명령어를 정의합니다.
ENTRYPOINT ["./mvnw", "spring-boot:run"]
