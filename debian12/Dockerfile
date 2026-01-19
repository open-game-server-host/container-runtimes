FROM debian:bookworm-slim

ARG WORK_DIR="/ogsh"
ARG UID=1337
ARG USERNAME=ogsh

RUN DEBIAN_FRONTEND=noninteractive apt update --fix-missing && DEBIAN_FRONTEND=noninteractive apt upgrade -y

# Valheim support
RUN DEBIAN_FRONTEND=noninteractive apt install -y libatomic1 libpulse-dev libpulse0

# ps aux support
RUN DEBIAN_FRONTEND=noninteractive apt install -y procps

WORKDIR "$WORK_DIR"

RUN adduser --uid $UID --disabled-password --gecos "" $USERNAME && chown -R $UID $WORK_DIR
USER $USERNAME

ENTRYPOINT ["sh", "startup_files/start.sh"]
