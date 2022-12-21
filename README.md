# NGINX Example

This example is deploys a site using [NGINX](https://www.nginx.com/)

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/o3MbZe)


## ✨ Features

- NGINX
- Api gateway routes

## 🚧 Test
```cs
http://127.0.0.1/depth
http://127.0.0.1/ticker
http://127.0.0.1/btc/brl
```

## 📝 Notes

By default the `site/` directory gets deployed as a static site. This can be modified by changing the `Dockerfile`.

This is deployed using the default NGINX configuration, can be overridden with a custom conf file by adding:

```
COPY nginx.conf /etc/nginx/nginx.conf
```

to the end of the Dockerfile. For more information, [read the docs](https://hub.docker.com/_/nginx).

![NGNIX](https://www.nginx.com/wp-content/uploads/2018/08/API-gateway-gRPC-sample-topology.png)
