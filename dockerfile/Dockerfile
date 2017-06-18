FROM centos:6

MAINTAINER "Carlos Brandt <carloshenriquebrandt at gmail>"

ENV USER user
ENV U_ID 1000
ENV G_ID 100

ENV WORKDIR /work

COPY src  /tmp/heasoft

RUN source /tmp/heasoft/install_heasoft.sh && main && \
    useradd -u $U_ID -g $G_ID -d /home/$USER -m -s /bin/bash $USER && \
    mkdir -p $WORKDIR && chown $U_ID:$G_ID $WORKDIR

RUN git clone https://github.com/chbrandt/docker_commons.git && \
    ln -sf docker_commons/entrypoint.sh /.

ENTRYPOINT ["/entrypoint.sh"]
