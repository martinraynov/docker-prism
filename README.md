# docker-prism
Dockerized Prism application for api mock and test

## Requirements

- You must have Traefik v3 container runnning. 

- Add the localhost configuration (need sudo rights)
```bash
sudo make add_localhost
```

(You can also add manually the line into the /etc/hosts file : `127.0.0.1 prism.local.io`

(To remove the line you can manually remove it from the /etc/host file or execute : `sudo make remove_localhost`)

## Start the container

```bash
make start
```

## Stop the container

```bash
make stop
```
