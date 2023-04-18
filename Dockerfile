FROM eclipse-temurin:8

RUN echo '{ "allow_root": true }' > /root/.bowerrc

RUN apt-get update
RUN apt-get install -y git

RUN mkdir /commafeed
RUN mkdir /config

WORKDIR /commafeed

RUN apt-get install -y build-essential

ENV COMMAFEED_GIT https://github.com/Athou/commafeed.git
#ENV COMMAFEED_VERSION 2.3.0

RUN git clone $COMMAFEED_GIT .
#RUN git checkout $COMMAFEED_VERSION

RUN ./mvnw clean package

VOLUME /config

COPY config.yml /config/config.yml

EXPOSE 8082
EXPOSE 8084

ENTRYPOINT java -Djava.net.preferIPv4Stack=true -jar /commafeed/target/commafeed.jar server /config/config.yml
