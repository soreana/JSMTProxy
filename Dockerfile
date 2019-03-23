FROM mhart/alpine-node:6.17.0

COPY config.json mtproxy.js /

RUN npm config set unsafe-perm true && npm install pm2 -g

CMD pm2 start mtproxy.js -i max && /bin/sh
