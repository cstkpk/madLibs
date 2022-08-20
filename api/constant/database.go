package constant

type databases struct {
	Dictionary string
}

// DBs holds the databases used by this application
var DBs = databases{
	Dictionary: "dictionary",
}

type dictionaryTables struct {
	Entries       string
	UserAccounts  string
	UserPasswords string
}

// DT holds the tables within the Dictionary DB
var DT = dictionaryTables{
	Entries:       DBs.Dictionary + ".entries",
	UserAccounts:  DBs.Dictionary + ".userAccounts",
	UserPasswords: DBs.Dictionary + ".userPasswords",
}
