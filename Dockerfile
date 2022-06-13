FROM node:14-slim
WORKDIR /usr/src/cli
RUN chown node:node ./
USER node
RUN npm i -G firebase-tools
COPY . .
RUN chmod +x /usr/src/cli/entrypoint.sh
ENTRYPOINT ["/usr/src/cli/entrypoint.sh"]