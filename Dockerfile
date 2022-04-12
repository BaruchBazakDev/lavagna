FROM maven:3.8.5-openjdk-8 AS build
WORKDIR /app
COPY project/ .
RUN mvn verify


FROM openjdk:8-jre-alpine
COPY --from=build /app/target/ /app/
COPY entrypoint.sh .
ENTRYPOINT "sh" "entrypoint.sh"