FROM debian

RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y \
    wget \
    ca-certificates \
    gnupg && \
    # vpncloud install:
    echo "deb https://repo.ddswd.de/deb stable main" | tee /etc/apt/sources.list.d/vpncloud.list && \
    wget https://repo.ddswd.de/deb/public.key -qO - | apt-key add && \
    apt-get update && \
    apt-get install -y vpncloud && \
    # clean up:
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
