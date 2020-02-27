FROM alpine
LABEL maintainer="O70 <THRAEX@aliyun.com>"

ENV FRP_VERSION 0.31.2

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
	&& tar -xzf frp_${FRP_VERSION}_linux_amd64.tar.gz \
	&& rm frp_${FRP_VERSION}_linux_amd64.tar.gz \
	&& mv frp_${FRP_VERSION}_linux_amd64 frp 

WORKDIR /frp

VOLUME /frp/conf

CMD ["./frps", "-c", "./frps.ini"]
