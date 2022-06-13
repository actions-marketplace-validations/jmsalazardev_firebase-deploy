FROM node:14-slim
WORKDIR /usr/src/cli
RUN chwon node:node ./
USER node
RUN npm i firebase-tools
COPY . .
ENTRYPOINT ["/entrypoint.sh"]