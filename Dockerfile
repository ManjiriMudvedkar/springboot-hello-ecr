FROM java:8
RUN apt update && apt upgrade && apt install curl &&\
    apt install sudo && apt-get install zip && apt-get install unzip &&\
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
ADD ./target/gs-spring-boot-0.1.0.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
