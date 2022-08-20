package constant

import "github.com/cstkpk/dictionary/api/derror"

var Errors = struct {
	// DB and system errors
	DbConnectionFailure error
	DbQueryFailure      error
	InternalServer      error

	// Endpoint errors
	EmailInvalid          error
	EmailNotUnique        error
	NoDefinitionFound     error
	PasswordsNotEqual     error
	PasswordLengthInvalid error
	UsernameInvalid       error
	UsernameNotUnique     error
}{
	// DB and system errors
	DbConnectionFailure: derror.New("There was an error connecting to the database", 500),
	DbQueryFailure:      derror.New("There was an error querying the database", 500),
	InternalServer:      derror.New("Internal server error", 500),

	// Endpoint errors
	EmailInvalid:          derror.New("Email address is invalid", 400),
	EmailNotUnique:        derror.New("Email is not unique", 400),
	NoDefinitionFound:     derror.New("No definition found", 404),
	PasswordsNotEqual:     derror.New("Passwords do not match", 400),
	PasswordLengthInvalid: derror.New("Password must be between 8 and 30 characters", 400),
	UsernameInvalid:       derror.New("Username is invalid", 400),
	UsernameNotUnique:     derror.New("Username is not unique", 400),
}
