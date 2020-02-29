# [frp](https://github.com/fatedier/frp) Dockerfile

## Build

``` sh
$ docker build -t guiwang/frp:0.31.2 .
```

## Run

``` sh
$ docker run -d --name frpc -v path/to/frpc.ini:/frp/conf/frpc.ini guiwang/frp:0.31.2
```
