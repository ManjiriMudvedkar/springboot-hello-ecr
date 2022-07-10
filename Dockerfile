FROM java:8
RUN apt update && apt upgrade && apt install curl &&\
    apt install sudo && apt-get install zip && apt-get install unzip &&\
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" &&\
    unzip awscliv2.zip &&\
    sudo ./aws/install
ADD ./target/gs-spring-boot-0.1.0.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
