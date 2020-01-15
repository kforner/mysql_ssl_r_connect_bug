ARG MYSQL_VERSION
FROM mysql:${MYSQL_VERSION}

RUN mkdir -p /etc/certs
COPY *.pem /etc/certs/
RUN chown -R mysql:mysql /etc/certs/ && \
    chmod 600 /etc/certs/*


COPY my.cnf /etc/


ENV MYSQL_ROOT_PASSWORD=toto


#EXPOSE 3306 33060
#CMD ["mysqld"]