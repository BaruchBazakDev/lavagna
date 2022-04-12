#!/bin/bash
java -Ddatasource.dialect=MYSQL -Ddatasource.url=jdbc:mysql://db:3306/lavagna -Ddatasource.username=root -Ddatasource.password=root -Dspring.profile.active=dev -jar /app/lavagna-jetty-console.war
# java -jar /app/lavagna-jetty-console.war
