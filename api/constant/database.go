package constant

type databases struct {
	Dictionary string
}

// DBs holds the databases used by this application
var DBs = databases{
	Dictionary: "dictionary",
}

type dictionaryTables struct {
	Entries string
}

// IC holds the tables within the IceCream DB
var DT = dictionaryTables{
	Entries: DBs.Dictionary + ".entries",
}
