package constant

type databases struct {
	Dictionary string
}

// DBs holds the databases used by this application
var DBs = databases{
	Dictionary: "dictionary",
}

type icTables struct {
	Entries string
}

// IC holds the tables within the IceCream DB
var IC = icTables{
	Entries: DBs.Dictionary + ".entries",
}
