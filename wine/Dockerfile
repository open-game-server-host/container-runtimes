FROM alpine:3.23

ARG WORK_DIR="/ogsh"
ARG UID=1337
ARG USERNAME=ogsh

RUN apk -U update && apk upgrade && apk add wine

WORKDIR "$WORK_DIR"

RUN adduser --uid $UID --disabled-password --gecos "" $USERNAME && chown -R $UID $WORK_DIR
USER $USERNAME
RUN mkdir /home/$USERNAME/.wine

ENTRYPOINT ["sh", "startup_files/start.sh"]
