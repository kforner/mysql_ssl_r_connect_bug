ARG R_FROM
FROM ${R_FROM}

RUN apt update && apt install -y libmariadbclient-dev
RUN install2.r RMySQL RMariaDB
