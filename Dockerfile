FROM postgres:12

ENV DEBIAN_FRONTEND=Noninteractive
RUN apt-get update \ 
    && apt-get upgrade -y \
    && apt-get install -y locales locales-all \
    && apt-get clean
ENV LANGUAGE=ru_RU.UTF-8
ENV LANG=ru_RU.UTF-8
ENV LC_ALL=ru_RU.UTF-8
RUN locale-gen ru_RU.UTF-8 && dpkg-reconfigure locales

RUN apt-get update \
    && apt-get install wget -y \
    && apt-get install postgresql-12-postgis-3 -y \
    && apt-get install postgis -y \
    && apt-get clean
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres"]