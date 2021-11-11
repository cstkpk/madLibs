package constant

import "github.com/cstkpk/dictionary/api/derror"

var Errors = struct {
	// DB and system errors
	DbConnectionFailure error
	InternalServer      error
}{
	// DB and system errors
	DbConnectionFailure: derror.New("There was an error connecting to the database", 500),
	InternalServer:      derror.New("Internal server error", 500),
}
