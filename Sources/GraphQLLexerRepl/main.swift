import GraphQL

print("")
print(" # # # # # # # # # # # # # # # # # # # # # # # #")
print("#                                               #")
print("#      Welcome to the GraphQL Lexer REPL.       #")
print("#   Please start by entering a GraphQL query.   #")
print("#   Submit your input by tapping enter twice.   #")
print("#                                               #")
print(" # # # # # # # # # # # # # # # # # # # # # # # #")
print("")

func readQuery() -> String {
	var query = ""
	while true {
		if let line = readLine() {
			guard line.isEmpty else {
				query += "\(line)\n"
				continue
			}
		}
		return query
	}
}

let query = readQuery()

do {
	var lexer = try Lexer(lexing: query)
	var tokens = [Lexer.Token]()
	while let token = try lexer.advance() {
		tokens.append(token)
	}
	print("\n✅ Lexed the following tokens ...\n")
	for token in tokens {
		print("\(token)")
	}
} catch let error as GraphQLError {
	print("\n❌ The following error occured: {location: \(error.start), message: \"\(error.message)\"}")
} catch {
	print("Unknown error: \(error)")
}
