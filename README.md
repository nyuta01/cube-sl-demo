# Cube Semantic Layer Demo

## Prerequisites
- Docker
- Docker Compose
- go-migrate

## Quick Start
```
$ docker-compose up
```

### Migration

```
$ export POSTGRESQL_URL=postgres://cube:12345@localhost:5432/sl-demo?sslmode=disable
$ migrate -database ${POSTGRESQL_URL} -path db/migrations up
```

### Run

```
$ curl --request POST \
  --url http://localhost:4000/cubejs-api/graphql \
  --header 'Content-Type: application/json' \
  --data '{"query":"query CubeQuery  { \n  cube {\n    products(orderBy: {count: desc } ) {\n      count\n    }\n    productCategories {\n      name\n    }\n  }\n}\n","operationName":"CubeQuery"}'

{"data":{"cube":[{"products":{"count":4},"productCategories":{"name":"Furniture"}},{"products":{"count":3},"productCategories":{"name":"Electronics"}},{"products":{"count":2},"productCategories":{"name":"Books"}}]}}
```

## References
- https://github.com/cube-js/cube/tree/master/examples
- https://cube.dev/blog/cubejs-open-source-dashboard-framework-ultimate-guide
