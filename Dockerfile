FROM ubuntu:18.04
LABEL maintainer="Fanjin Zeng <fjzeng@outlook.com>"

WORKDIR /root
RUN apt-get update && apt-get install -y lib32gcc1 wget
RUN wget -qO- "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

RUN ./steamcmd.sh \
	+login anonymous \
	+force_install_dir ./hlds/ \
	# mod must be chosen first (only for HLDS)
	+app_set_config 90 mod cs \
	+app_update 90 validate \
	+quit \
	; exit 0

# 2 runs required for successful install
RUN ./steamcmd.sh \
	+login anonymous \
	+force_install_dir ./hlds/ \
	+app_set_config 90 mod cs \
	+app_update 90 validate \
	+quit \
	; exit 0

EXPOSE 27015
ADD cfg/* hlds/

RUN apt-get remove -y wget && apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
#CMD hlds/hlds_run -game cstrike +maxplayers 32 +map de_dust2 +hostname "Counter-Strike Dedicated Server"
