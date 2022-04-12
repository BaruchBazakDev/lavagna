#!/bin/bash

#health check for mysql
state=0
while [ $state -eq 0 ]; do
  nc -z -v db:3306;
  if [ $? -eq 0 ];then
    state=1;
  else
    echo "Wait for mysql"
    sleep 3;
  fi;
  done;

java -Ddatasource.dialect=${DB_DIALECT} \
-Ddatasource.url=${DB_URL} \
-Ddatasource.username=${DB_USER} \
-Ddatasource.password=${DB_PASS} \
-Dspring.profile.active=${SPRING_PROFILE} \
-jar /app/lavagna-jetty-console.war
#replace with ENV
#java -Ddatasource.dialect=MYSQL -Ddatasource.url=jdbc:mysql://db:3306/lavagna -Ddatasource.username=root -Ddatasource.password=root -Dspring.profile.active=dev -jar /app/lavagna-jetty-console.war

#default for run app with HSDDB:
# java -jar /app/lavagna-jetty-console.war