# Docker + wordpress + xdebug + webpack live-reload (css,js,php)

Description of installation and use of Docker and Docker Compose to create a temporary environment for creating a new wordpress theme in vscode. 
The environment consist of:
- wordpress:latest
- XDebug
- mysql 5.7
- phpmyadmin
- webpack 4

> You should also install the plugin [PHP Debug](https://marketplace.visualstudio.com/items?itemName=felixfbecker.php-debug)

Each change in the scss/js files loads the generated css and js into wordpress and automatically refreshes the page view.

Main folders are:  

```bash
.vscode
└── launch.json
```
> listen for XDebug

```bash
config
├── mysqldump.js
├── postcss.config.js
├── webpack.base.js
├── webpack.dev.js
└── webpack.prod.js
```
> webpack, postcss and mysqldump - the ability to do a database dump from the command line `yarn dump`

```bash
database
```
> database always used when starting the environment

```bash
docker
└── wordpress
    └── wordpress.Dockerfile
```
> configuration for wordpress and xdebug

```bash
dump
```
> folder into which the database is being dumped `yarn dump`

```bash
frontend
├── images
├── js
│   ├── index.js
│   └── post.js
└── scss
    ├── global.scss
    ├── index.scss
    ├── normalize.scss
    └── post.scss
```
> the folder contains `scss/js` files that are compiled and saved in the folder `wp-content/themes/assets/(css|js)`

```bash
wp-content
├── themes
│   ├── newTemplate
│   │   ├── assets
│   │   │   ├── css
│   │   │   └── js
│   │   ├── inc
│   │   │   └── themename_styles.scripts.php
│   │   ├── 404.php
│   │   ├── footer.php
│   │   ├── functions.php
│   │   ├── header.php
│   │   ├── index.php
│   │   ├── sidebar.php
│   │   └── style.css
└── ...
```
> new template, the most important file `themename_styles.scripts.php` he gets the css and js generated and places it in a wordpress template

## Build the application
Install the Docker, manual can be found here ->
[Docker](https://www.docker.com/get-started).
Linux users must also install Docker Compose separately.

## Clone the repo and install dependencies
```bash
git clone https://github.com/tomik23/docker-wordpress.git
cd docker-wordpress
yarn
```

### How to start the process of building the environment
In the created docker-wordpress folder there is docker-compose.yml
Start the console and ...

```bash
docker-compose up 
```
> all dependencies will be incurred, this may take a while.

```bash
yarn docker:down
```
> all docker containers will be removed

```bash
yarn dev
```
> runs the development environment at `http://localhost:3000`, js/css files are generated and loaded into wordpress in the folder `wp-content/themes/assets/(css|js)`

```bash
yarn prod
```
> finally generated `css/js` files with separate portions, in the same folder as dev `wp-content/themes/assets/(css|js)`, but this time they are compressed

```bash
yarn dump
```
> dumps the database, 

### Additional information
* wordpress `http://localhost:3000`
* wp-admin `http://localhost/wp-admin` (user/password test)
* phpMyAdmin `http://localhost:8001` (user root, password test)

## Docker Compose
Example configuration file `docker-compose.yml`:
```yml
version: '3.7'
services:

  db:
    image: mysql:5.7
    container_name: mysql
    volumes:
      - ./database:/docker-entrypoint-initdb.d
    ports:
      - 3306:3306
    restart: on-failure
    environment:
      MYSQL_ROOT_PASSWORD: test
      MYSQL_DATABASE: wp

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    container_name: phpmyadmin
    depends_on:
      - db
    ports:
      - 8001:80
    environment:
      MYSQL_ROOT_PASSOWRD: test

  app:
    container_name: wordpress
    build:
      context: ./docker/wordpress/
      dockerfile: wordpress.Dockerfile
    depends_on:
      - db
    links:
      - db:mysql
    ports:
      - 80:80
    restart: on-failure
    volumes:
      - ./wp-content/languages:/var/www/html/wp-content/languages
      - ./wp-content/uploads:/var/www/html/wp-content/uploads
      - ./wp-content/themes/:/var/www/html/wp-content/themes
      - ./wp-content/plugins:/var/www/html/wp-content/plugins
      - ./wp-content:/var/www/html/wp-content
    environment:
      WORDPRESS_DB_NAME: wp
      WORDPRESS_DB_USER: root
      WORDPRESS_DB_PASSWORD: test
      WORDPRESS_DEBUG: 1
      XDEBUG_CONFIG: remote_host=host.docker.internal
```

## Visual Studio Code
Example configuration file `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Listen for XDebug",
      "type": "php",
      "request": "launch",
      "port": 9000,
      "pathMappings": {
        "/var/www/html": "${workspaceFolder}"
      },
    }
  ]
}
```