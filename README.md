<p align="center">
<a href="https://hub.docker.com/r/deercloud/snell">
<img src="https://user-images.githubusercontent.com/2666735/52914184-588a8380-3300-11e9-8f29-d6d3adc9bd05.png" />
</a>
</p>

<h1 align="center">snell</h1>

<p align="center">an encrypted proxy service program.</p>

<p align=center>
<a href="https://hub.docker.com/r/deercloud/snell">Docker Hub</a> ·
<a href="https://github.com/surge-networks/snell">Project Source</a> ·
<a href="https://t.me/linuxUpdate">Telegram Channel</a>
</p>
***

## latest version

|version|
|---|
|deercloud/snell:latest|
|deercloud/snell:current|
|deercloud/snell:1.1.0|


## environment variables

|name|value|
|---|---|
|SERVER_HOST|0.0.0.0|
|SERVER_PORT|8388|
|**PSK**|[RANDOM]|
|**OBFS**|http|
|ARGS|-|

***

### Pull the image

```bash
$ docker pull deercloud/snell
```

### Start a container

```bash
$ docker run -p 8388:8388 -p 8388:8388/udp -d \
  --restart always --name=snell deercloud/snell
```

### Display config

```bash
$ docker logs snell

[snell-server]
listen = 0.0.0.0:8388
psk = 05d80656cd67e1bec62d3366c13e6f11
obfs = http
2019-02-17 14:11:06.265334 [server_main] <NOTIFY> snell-server v1.1.1 (Mar  5 2019 13:50:05)
2019-02-17 14:11:06.265477 [server_main] <NOTIFY> Start snell server on 0.0.0.0:8388
2019-02-17 14:11:06.265484 [server_main] <NOTIFY> Obfs enabled (HTTP)
2019-02-17 14:11:06.265546 [server_main] <NOTIFY> TCP Fast Open enabled
```

Add a proxy line in Surge

`Proxy = snell, [SERVER ADDRESS], 8388, psk=05d80656cd67e1bec62d3366c13e6f11, obfs=http`
