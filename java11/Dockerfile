FROM eclipse-temurin:11-jdk

ARG WORK_DIR="/ogsh"
ARG UID=1337
ARG USERNAME=ogsh

RUN DEBIAN_FRONTEND=noninteractive apt update --fix-missing && DEBIAN_FRONTEND=noninteractive apt upgrade -y

WORKDIR "$WORK_DIR"

RUN adduser --uid $UID --disabled-password --gecos "" $USERNAME && chown -R $UID $WORK_DIR
USER $USERNAME

ENTRYPOINT ["sh", "startup_files/start.sh"]
