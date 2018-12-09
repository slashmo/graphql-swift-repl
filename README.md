# GraphQL Swift REPL

This is a REPL for playing around with the GraphQL Lexer I've written for the [`graphql-swift`](https://github.com/ocelotgraphql/graphql-swift) repository.

## Installation

Start by cloning this repository:

``` sh
git clone git@github.com:slashmo/graphql-swift-repl.git
```

### macOS (without Docker)

If you already have **Swift 4.2** installed on your Mac it's as easy as executing `swift run` inside this project's root folder.

### Any platform (using Docker)

I've provided a `Dockerfile` for those who prefer to run the REPL inside a container. Execute the following lines to get up & running:

``` sh
docker build -t slashmo/graphql-swift-repl .
docker run -it --rm slashmo/graphql-swift-repl
```

> Depending on your internet connection this will take a few minutes.

## Example queries

``` graphql
# valid query
query {
  repository(owner: "apple", name: "swift") {
    stargazers {
      totalCount
    }
  }
}
```

``` graphql
# invalid query
query {
  repository(owner: "apple", name: "swift) {
    stargazers {
      totalCount
    }
  }
}
```
