# demo-springboot-api-postgresql
Springboot + API + JPA (PostgreSQL) + Dockerized

## Pre-requisite 
### Deploy PostgreSQL on Docker
```
docker pull postgres
docker run --name test-pge -p 5433:5432 -e POSTGRES_PASSWORD=admin -d postgres
```

### Setup DB
Connect to database using a client (e.g. SQL Workbench) or command-line (psql)

Create database and schema

```
CREATE DATABASE testdb;
CREATE SCHEMA testschema;
```

## Create jar
```
cd <project root>
mvn package
```

## Deploy application on Docker
### Build the image
```
docker build -t springboot/demo-api-postgres .
```

### Create container (Run it on 8082 port on host)
```
docker run -p 8081:8080 springboot/demo-api-postgres
```

## Test APIs
GET http://localhost:8081/api/v1/users

GET http://localhost:8081/api/v1/users/{USERID}

POST http://localhost:8081/api/v1/users

Sample request body:
```
{
	"firstName": "John",
	"lastName": "Doe",
	"email": "xyz@xyz.com"
}
```