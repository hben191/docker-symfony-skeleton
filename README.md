# Symfony Docker Skeleton

This repository provides a simple setup for a Symfony project using Docker with the following services:
- PHP-FPM: For running PHP 8.3
- Nginx: For serving the Symfony application
- MySQL: For database management
- Adminer: For managing the MySQL database through a web interface
    

### Prerequisites

Before running this project, ensure you have the following installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Setup
### 1. Clone the repository

```bash
git clone https://github.com/hben191/docker-symfony-skeleton.git
cd docker-symfony-skeleton
```

### 2. Build and run the containers


Run the following command to build and start the containers:

```bash
docker compose up -d --build
```

This will start the following services:

- PHP-FPM (accessible internally)
- Nginx (exposed on the default port 80)
- MySQL (accessible internally, but Adminer is available)
- Adminer (available on port 8080)

### 3. Access the services

- **Symfony app**: [http://localhost](http://localhost)
- **Adminer**: [http://localhost:8080](http://localhost:8080)

#### 4. Database credentials

When accessing Adminer, use the following credentials:
- **Server**: `mysql` (this is the service name in Docker Compose)
- **User**: `dbuser`
- **Password**: `password`
- **Database**: `app`

All these credentials can **(and must)** be changed via the docker-compose.yaml file, in the environment section of the mysql container.

```bash
environment:
    MYSQL_ROOT_PASSWORD: root
    MYSQL_DATABASE: app
    MYSQL_USER: dbuser
    MYSQL_PASSWORD: password
```

## File Structure

graphql


```
project-directory/
│
├── docker-compose.yaml      # Docker Compose configuration
├── docker/
│   ├── nginx/
│   │   └── Dockerfile      # Dockerfile for Nginx
│   │   └── nginx.conf      # Nginx configuration
│   ├── php/
│   │   └── Dockerfile      # Dockerfile for PHP-FPM with Git and Symfony CLI and composer
│   └── mysql/              # MySQL (managed by Docker Compose)
└── app/                # Your Symfony application that you can add later
```

### Managing the Symfony Application

Once inside the running PHP container, you can use Composer and Symfony CLI as usual.
Access the PHP container

To open a shell inside the PHP container, run:

``` bash
docker exec -it php-fpm sh
```

From here, you can run Symfony commands, such as:

``` bash
composer install
symfony server:start
```

### Stopping the containers

To stop the running containers, execute:

```bash
docker-compose down
```

This will stop and remove all containers, networks, and volumes created by docker-compose up.

## Disclaimer

While this setup is designed for Symfony, it is not exclusive to it. The Docker configuration (PHP-FPM, Nginx, MySQL, Adminer) can be easily adapted to work with other PHP frameworks or applications such as Laravel, Zend, or custom PHP projects. Just replace the Symfony-specific parts with your framework of choice, and you're good to go!

## Happy Coding! 🎉🚀

I hope this Docker setup makes your development process smoother and more enjoyable. I know it would've helped me in my early developing days.
 Now, go forth and build something amazing! ✨👨‍💻👩‍💻

Happy coding! 💻

## Contributing

Feel free to open issues or submit pull requests if you have suggestions to improve this setup !