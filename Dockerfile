FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99
ENV PORT=8080

RUN apt-get update && apt-get install -y \
xvfb \
x11vnc \
openbox \
supervisor \
nginx \
wget \
curl \
unzip \
ca-certificates \
chromium-browser \
novnc \
websockify \
dbus-x11 \
xterm \
fonts-dejavu \
&& apt-get clean

COPY . /app
WORKDIR /app

RUN chmod +x *.sh

EXPOSE 8080

CMD ["./start.sh"]