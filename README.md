# Docker + wordpress + phpmyadmin

Description of the installation and use of Docker and Docker Compose to create a temporary environment for creating a new theme.
The environment will consist of wordpress 5.1.1 + phpmyadmin + mysql 5.7

## Build the application
Install the Docker manual can be found here ->
[Docker](https://www.docker.com/get-started).
Linux users must also install Docker Compose separately.

### Use Git 
```
git clone https://github.com/tomik23/docker-wordpress.git
```
or ...
1. Download package file:<br/>
```https://github.com//tomik23/docker-wordpress/archive/master.zip```
2. Extract it to your project directory.


### How to start the process of building the environment
In the created docker-wordpress folder there is docker-compose.yml
Start the console and ...
```
$ docker-compose up 
```
All dependencies will be downloaded - mysql: 5.7, latest phpmyadmin and wordpress 5.1.1

### How to watch the generated production?
* phpMyAdmin ```http://localhost:8080``` (user root, password test)
* wordpress ```http://localhost```
* wp-admin ```http://localhost/wp-admin``` (user and password is test)