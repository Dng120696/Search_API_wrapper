# Star Wars APIs Wrapper

This Rails-based API wrapper facilitates data retrieval from [Star Wars APIs](https://swapi.dev/), streamlining the integration of Star Wars APIs into Ruby applications.

**Note:** This wrapper leverages the [faraday](https://github.com/lostisland/faraday) gem for making HTTP requests and interaction with Star Wars APIs.

## Endpoints used

### Films

* **GET /films**
  - Retrieves a list of all the episode films.

* **GET /films/:id**
  - Retrieves details of a specific episode film.

### People

* **GET /people**
  - Retrieves a list of characters from all films.

* **GET /people/:id**
  - Retrieves information about a specific character in the episode films.

### Planets

* **GET /planets**
  - Retrieves a list of planets featured in the films.

### Species

* **GET /species**
  - Retrieves a list of species featured in the films.

### Starships

* **GET /starships**
  - Retrieves a list of starships featured in the films.

### Vehicles

* **GET /vehicles**
  - Retrieves a list of vehicles featured in the films.


## Documentation
  For more information about methods and parameters available, you may refer to the following: 
 
- **Public APIs website:** [https://publicapis.io/star-wars-api](https://publicapis.io/star-wars-api)
- **Star Wars APIs Documentation:** [https://swapi.dev/](https://swapi.dev/)

