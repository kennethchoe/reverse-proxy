FROM nginx:latest
EXPOSE 80
EXPOSE 443
RUN apt-get update && apt-get install python3-certbot-nginx certbot cron -y
COPY ./artifacts /artifacts
RUN chmod +x /artifacts/start.sh
ENTRYPOINT [ "/artifacts/start.sh" ]