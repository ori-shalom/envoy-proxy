# envoy-proxy

A minimal simple Envoy proxy.

## Environment Variables:

- `PORT` the port on which the proxy starts (default `8080`). 
- `TARGET_HOST` the target host to proxy to (default `172.17.0.1`). 
- `$TARGET_PORT` the target port to proxy to `80`/`443`  (default `443`). 

## Usage

```bash
docker run -e TARGET_HOST=goolge.com -e TARGET_PORT=443 -e PORT=80 -p 8080:80 envoy-proxy
```

## Build from source

```bash
docker build -t envoy-proxy .
```
