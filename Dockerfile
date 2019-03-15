FROM node:carbon

COPY config.json mtproxy.js /

RUN npm install pm2 -g

CMD pm2 start mtproxy.js -i max && /bin/bash
