# docker-domoticz-arm32v7
docker compose for domoticz on arm32v7 architecture (RPI2)

use arm 32bit stable build from <http://www.domoticz.com/downloads/>

## Configuration

all config are in docker-compose.yml

### nginx, letsencrypt companion variables

see <https://github.com/coelf/docker-letsencrypt-nginx-proxy-companion>
and armhf branch

```docker-compose
VIRTUAL_HOST=domoticz.local,domoticz.mydomain.org
LETSENCRYPT_HOST=domoticz.mydomain.org
LETSENCRYPT_EMAIL=nospam@mail.com
```

### external db

replace `/path/to/domoticz.db` with your sqlite db file.

## start docker in background

```bash
docker-compose up -d
```
