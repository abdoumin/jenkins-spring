FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY ./target/demo-*.jar /usr/app/
WORKDIR /usr/app

CMD java -jar demo-*.jar
