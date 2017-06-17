FROM centos:6

MAINTAINER "Carlos Brandt <carloshenriquebrandt at gmail>"

ENV USER user
ENV U_ID 1000
ENV G_ID 100

ENV WORKDIR /work

COPY src/browse  /tmp/browse

RUN source /tmp/browse/install_browse.sh && main && \
    useradd -u $U_ID -g $G_ID -d /home/$USER -m -s /bin/bash $USER && \
    chown -R $U_ID:$G_ID /dbase && \
    mkdir -p $WORKDIR && chown $U_ID:$G_ID $WORKDIR

RUN git clone https://github.com/chbrandt/docker_commons.git && \
    ln -sf docker_commons/entrypoint.sh /.

ENV EXECAPP /usr/local/browse/x86_64-unknown-linux-gnu-libc2.12/bin/browse

ENTRYPOINT ["/entrypoint.sh"]
#CMD ["-c","/usr/local/browse/x86_64-unknown-linux-gnu-libc2.12/bin/browse"]
#cat download.list \| xargs -n1 -P8 -i wget -nv -w 2 -nH --cut-dirs=1 -r --no-parent --reject "index.html*" ftp://heasarc.gsfc.nasa.gov/software/lheasoft/release/{}
