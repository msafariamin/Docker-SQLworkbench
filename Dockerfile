FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD 123
ENV MYSQL_DATABASE company
ENV MYSQL_USER marya
ENV MYSQL_PASSWORD 1234
ADD create.sql /docker-entrypoint-initdb.d

EXPOSE 3306
