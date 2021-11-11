package constant

import "github.com/cstkpk/dictionary/api/derror"

var Errors = struct {
	// DB and system errors
	DbConnectionFailure error
	DbQueryFailure      error
	InternalServer      error

	// Endpoint errors
	NoDefinitionFound error
}{
	// DB and system errors
	DbConnectionFailure: derror.New("There was an error connecting to the database", 500),
	DbQueryFailure:      derror.New("There was an error querying the database", 500),
	InternalServer:      derror.New("Internal server error", 500),

	// Endpoint errors
	NoDefinitionFound: derror.New("No definition found", 404),
}
