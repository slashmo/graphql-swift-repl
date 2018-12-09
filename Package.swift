// swift-tools-version:4.2

import PackageDescription

let package = Package(
	name: "GraphQLLexerRepl",
	dependencies: [
		.package(url: "https://github.com/ocelotgraphql/graphql-swift", .branch("master"))
	],
	targets: [
		.target(
			name: "GraphQLLexerRepl",
			dependencies: ["GraphQL"]
		)
	]
)
