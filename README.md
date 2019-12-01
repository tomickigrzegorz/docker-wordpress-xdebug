# Docker + wordpress + xdebug + webpack live-reload (css,js,php)

Description of installation and use of Docker and Docker Compose to create a temporary environment for creating a new wordpress theme in vscode. 
The environment consist of:
- wordpress:latest
- XDebug
- mysql 5.7
- phpmyadmin
- webpack 4

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

```json
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
> all containers removed

```bash
yarn dev
```
> runs the development environment at `http://localhost:3000`, js/css files are generated and loaded into wordpress in the folder `wp-content/themes/assets/(css|js)`

```bash
yarn prod
```
> finally generated `css/js` files with separate portions, in the same folder as dev `wp-content/themes/assets/(css|js)`

```bash
yarn dump
```
> dumps the database, 

### Additional information
* wordpress `http://localhost:3000`
* wp-admin `http://localhost/wp-admin` (user/password test)
* phpMyAdmin `http://localhost:8001` (user root, password test)