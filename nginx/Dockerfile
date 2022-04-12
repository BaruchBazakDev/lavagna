FROM lavagna_stable:latest AS build

FROM nginx:alpine
COPY --from=build /app/lavagna /usr/share/nginx/html/lavagna
COPY configuration/nginx.conf /etc/nginx/nginx.conf
