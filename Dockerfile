FROM node:14-alpine
RUN npm i -g firebase-tools
COPY README.md LICENSE /
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]