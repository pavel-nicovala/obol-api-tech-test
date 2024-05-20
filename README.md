# Obol - Postman, Godog and k6 PoC for Obol API 

## Dependecies:

```
- node.js
- go
- npm
- docker
```

## Usage

# Postman

_In root dir_

_Install_

```sh
npm install           
```

_Run_
```sh            
npm run test:postman
```

# Godog

_In godog dir_

_Install_

```sh
make all         
```

_Run_
```sh            
go test
```

# k6

_In root dir_

_Run_
```sh            
docker run --rm -i grafana/k6 run - <k6/script.js
```

## Description 

All the tests run from CLI, query Obol - System endpoints and can be found under their corresponding directories: _postman, godog and k6_
  
Postman tests need to be exported in json collections and require newman dependency to run from CLI, in order to be modified they need to be imported in Postamn client and then exported. 
Godog tests are using a BDD approach, more steps can be added and the existing ones are documented [here](https://pawelwritescode.github.io/godog-http-api.documentation/).
k6 tests run dockerized and do a short lived performance test, more scenarios can be added but the environment under test has rate limiting policy.
