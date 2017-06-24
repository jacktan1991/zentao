FROM centos:7.2.1511

ADD   http://dl.cnezsoft.com/zentao/9.2.1/ZenTaoPMS.9.2.1.zbox_64.tar.gz  /tmp

COPY  ./boot.sh   /usr/local/boot.sh
RUN   chmod +x    /usr/local/boot.sh

ENTRYPOINT  ["/usr/local/boot.sh"]
