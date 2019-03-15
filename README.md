# JSMTProxy

High Performance NodeJS MTProto Proxy

### Configuration

Change port and secret field in config.json.

### Build and run docker image

Clone this repository and change your directory to JSMTProxy and run below commands.

```
$ docker build -t mtproto .
$ docker run -it -p <your public port>:<config.json port> mtproto
```

### Connect from telegram

Modify and send below link to yourself in telegram, and then click on it.

`https://t.me/proxy?server=<your public IP>&port=<your public port>&secret=<your secret>`

### Use docker compose

```
$ docker-compose up -d
```

### Use docker service

```
$ docker swarm init
$ docker stack deploy -c docker-compose.yml mtprotohub
```

Check service status:

```
$ docker service ls
```
