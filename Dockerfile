FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y net-tools vim wget curl lsof git \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -r web && useradd -r -m -d /home/web -g web web
COPY --chown=web:web . /home/web/tinyweb/
RUN chmod +x /home/web/tinyweb/start.sh
USER web
WORKDIR /home/web/tinyweb/

EXPOSE 8888
CMD ["./start.sh"]




