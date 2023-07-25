# iOS App RepositorySearch

- example iOS app written in Swift using SwiftUI and Apollo for GraphQL requests
- app sends requests to the public GitHub graphql server instance to get the
  top 50 repositories for the search term 'topic:ios'
- you must specify your own GitHub access token to use the app

## Install dependencies

- Links: [GitHub](https://github.com/apollographql/apollo-ios), [Docs](https://www.apollographql.com/docs/ios/get-started/)
- Install core package: `Apollo ` 1.3.0
    - Not `ApolloCodegenLib ` (only for MacOS)
    - Not `apollo-ios-cli` (build errors)
- If core package is installed, the cli can be installed with Xcode (right clock root project -> Apollo -> `Install CLI`)

## Create source code

Generierung der codegen-config Datei

`./apollo-ios-cli init --schema-namespace GitHubAPI --module-type embeddedInTarget --target-name RepositorySearch`

oder überschreiben der Vorhandenen

`./apollo-ios-cli init --schema-namespace GitHubAPI --module-type embeddedInTarget --target-name RepositorySearch --overwrite`

Generierung der Sourcen

`./apollo-ios-cli generate`
