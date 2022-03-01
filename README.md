# Tailscale Custom DERP Server

使用该脚本部署到 k8s 和 docker 上。

`docker pull ghcr.io/tearfuldalvik/derp-server:main`

`docker run -d --restart=always -e HOST=xxx.com -v /certdir:/certdir -p 19999:443 ghcr.io/tearfuldalvik/derp-server:main`
