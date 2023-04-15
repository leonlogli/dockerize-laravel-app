# Docker compose Example

This is a simple Docker example that shows how to run laravel/php/mysql app with docker compose.
The project has 3 utiliy containers:

- composer: to create laravel project without setup composer on the host machine
- artisan: for db migration or populate the db with some initial data
- npm: frontend scripts

## Prerequisites

Before you get started, you need to have the following tools installed:

- Docker

## Running the compose Container

Navigate to the root directory of the cloned repository:

First create a laravel project by running the `composer` utility container

```bash
docker-compose run --rm composer create-project --prefer-dist laravel/laravel .
```

Start all containers:

```bash
docker-compose up -d
```

Migrate the db through the `artisan` utility container

```bash
docker-compose run --rm artisan migrate
```

Stop all containers:

```bash
docker-compose down
```
