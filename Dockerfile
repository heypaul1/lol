FROM ubuntu:20.04

WORKDIR /app

RUN apt-get update && apt-get install -y openssh-server

RUN useradd -m sshuser
RUN echo "root:root" | chpasswd

COPY ssh_config /etc/ssh/

CMD ["/usr/sbin/sshd", "-D"]
