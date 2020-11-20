#!/bin/bash

mvn install
sudo cp target/kse-custom-auth-1.0-SNAPSHOT-jar-with-dependencies.jar /opt/kafka/libs/
sudo chown kafka:kafka /opt/kafka/libs/kse-custom-auth-1.0-SNAPSHOT-jar-with-dependencies.jar
sudo cp src/test/resources/server.properties /opt/kafka/config/server.properties
sudo systemctl restart kafka
pwd