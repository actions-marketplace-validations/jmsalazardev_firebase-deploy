FROM node:14-alpine
WORKDIR /CLI
RUN npm i -g firebase-tools
RUN chmod +x entrypoint.sh
COPY README.md LICENSE entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]