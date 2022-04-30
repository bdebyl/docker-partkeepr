FROM docker.io/mhubig/partkeepr:latest
MAINTAINER "bastian@bdebyl.net"

ADD entrypoint.sh .
ENTRYPOINT ["entrypoint.sh"]
