# greenlight

**
greenlight is a backend service that provides a RESTful API for managing user accounts and authentication. It is built using Golang , PostgreSQL and caddy web server . The API provides endpoints for creatinguser accounts, as well as for logging in and logging out. The API also provides endpoints for resetting passwords and verifying email addresses, The API provieds endpoints for adding films and searching for films using full text search and filtering by genre and rating. The API is secured using tokens and provides endpoints for refreshing tokens and revoking tokens. The API is also rate limited to prevent abuse. The API is deployed using docker and docker-compose.
**

## Setup

To run the greenlight API locally, you will need to have Docker and Docker Compose installed on your machine. You can download Docker Desktop from the official website: https://www.docker.com/products/docker-desktop

Once you have Docker installed, you can clone the greenlight repository and navigate to the root directory of the project. From there, you can run the following command to start the greenlight API:

```bash
docker-compose up
```

This will start the greenlight API and the PostgreSQL database in separate Docker containers. The API will be accessible at http://localhost:4000.

## API Endpoints

The greenlight API provides the following endpoints:

### User Endpoints

- `POST /v1/users`: register a new user account
- `PUT /v1/users/activated`: activate a user account
- `POST /v1/tokens/authentication`: log in and create a new access token

### Movies Endpoints

- `POST /v1/movies`: add a new movie
- `GET /v1/movies`: search for movies
- `GET /v1/movies/:id`: get a movie by ID
- `patch /v1/movies/:id`: update a movie by ID
- `DELETE /v1/movies/:id`: delete a movie by ID
