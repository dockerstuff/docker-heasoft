FROM chbrandt/centos:heasoft

MAINTAINER "Carlos Brandt <carloshenriquebrandt at gmail>"

ENV HEASOFT_TMPDIR  /tmp/heasoft

COPY src $HEASOFT_TMPDIR

RUN source $HEASOFT_TMPDIR/install_heasoft.sh && \
    install && \
    rm -rf $HEASOFT_TMPDIR

RUN git clone https://github.com/chbrandt/docker_commons.git && \
    ln -sf docker_commons/entrypoint.sh /.

ENTRYPOINT ["/entrypoint.sh"]
