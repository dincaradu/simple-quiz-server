# Socotimp App Cloud Code

Use npm deploy to deploy it. Easy.


## Setting Up Orgs and Users

1. Set up the org role.
2. Set up the org at Organisation, referencing the role.
3. For every user
  3.1. Set up the org role in the user profile under companyRole
  3.2. Add them to the org role and the "member" role


## Run socotim-app-server with Docker Compose

Make sure you've checked out the latest version of socotim-app-docker, follow the project structure and build and run the containers using docker compose.


## Run socotim-app-server in Docker

1. Open a terminal window in the current folder.
2. You can build the docker image with either of the following commands:
`
npm run docker:build
docker build --pull --rm -f "Dockerfile" -t cloudcode:latest "."
`

3. You can run the docker image in a container with either of the followung commands:
`
npm run docker:run
docker run --rm -d  -p 1337:1337/tcp cloudcode:latest
`

Additionally, you can execute the entire process, from building the code to running the docker container, with:
`
npm run docker
`


## Changes to the database entities (a.k.a. migrations)

Any changes to the Parse classes need to be aggregated through migrations.
Note: make sure you've set up the environment in migrations/init_migrations.ts
To run the migrations against the development environment run:
`
npm run migrations:dev
`
To run the migrations against the production environment run:
`
npm run migrations:prod
`