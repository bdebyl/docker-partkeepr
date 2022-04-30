FROM docker.io/mhubig/partkeepr:latest

ADD entrypoint.sh .
ENTRYPOINT ["entrypoint.sh"]
