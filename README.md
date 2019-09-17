# Docker-SQLworkbench

After installing Docker for Mac, please verify the information below.

Note: $ is the prompt. Ignore it and copy the rest of the line.

```$docker --version```

```Docker version 17.09.0-ce```

Build yours dockeer image.
```$docker build -t "choise a name" .```
Run the MySQL image using the docker run command.
```$docker run -d -p3306:3306```


This will install the version of the MySQL image that you choosed in Dockerfile. As of this writing, it was 5.7.
If the image was not already available, this command will download the image and run it.
You can verify if MySQL has started using the docker ps command below.

```$docker ps```
```CONTAINER ID        IMAGE                COMMAND                  CREATED             
a3fb00c34877        mysql/mysql-server   "/entrypoint.sh my..."   2 minutes ago       
STATUS                   PORTS                               NAMES
Up 2 minutes (healthy)   0.0.0.0:3306->3306/tcp, 33060/tcp   mysql
```


Log into MySQL within the docker container using the docker exec command:

```$docker exec -it "CONTAINER ID" bin/bash
bash-4.2# mysql -uroot -p"password"
mysql>
```


Remember, when we created and ran the MySQL container, we provided MYSQL_ROOT_PASSWORD=password that was defined in Dockerfile.
Create a database and user, and grant privileges in MySQL (from within the container).
Log into MySQL if you haven't already. After login, the mysql> prompt shows up:

```bash-4.2# mysql -uarun -ppassword
mysql>
```

I create a user named arun, grant all privileges, and quit. 
Important: This step is required to log into MySQL from outside the container. The root user will not be able to log in from the host OS (Mac OS). Use % instead of localhost in arun@localhost.


```mysql> CREATE USER 'arun'@'%' IDENTIFIED BY 'password';
Query OK, 0 rows affected (0.00 sec)
mysql> GRANT ALL PRIVILEGES ON * . * TO 'arun'@'%';
Query OK, 0 rows affected (0.00 sec)
mysql> quit
```

Connect to MySQL running in Docker from MySQL Workbench. If MySQL Workbench is not installed yet, install it.
Open MySQL Workbench and click on + to add a new connection. Enter all the information as stated in the screenshot and click on Test Connection.
Enjoy creating and accessing your MySQL database running in a Docker container! 
