FROM node:14-slim
RUN npm i -g firebase-tools
RUN chmod +x entrypoint.sh
COPY . .
ENTRYPOINT ["/entrypoint.sh"]