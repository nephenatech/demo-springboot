# demo-springboot

Sample Spring Boot application for the Jenkins on Ubuntu 24 course.

## Requirements
- JDK 21
- Maven 3.9+ or the included Maven Wrapper

## Run locally
```bash
./mvnw spring-boot:run
```

## Build locally
```bash
./mvnw clean test package
```

## Endpoints
- `/` → hello message
- `/health` → simple OK response
