## Docker environment to develop wordpress projects with imageMagick
## Author : Nitin Tripathi
#### This environment contains:
  - Wordpress = php + apache + imagick
  - PhpMyadmin
  -MySQL

By default the WordPress container will run at port 10127 (is possible to change this inside docker-compose.yml),
phpMyAdmin will run at 8080 and mysql at 10126
The '.env' file sets the environment variables.

#### In the terminal type

```
  $ docker-compose build
  $ docker-compose up -d
```
