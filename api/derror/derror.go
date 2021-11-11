package derror

// DError is the custom error used for application-specific errors
type DError struct {
	message string
	code    int
}

// Error returns an error message
func (e *DError) Error() string {
	return e.message
}

// Code returns a status code
func (e *DError) Code() int {
	return e.code
}

// New returns a new DError
func New(message string, code int) *DError {
	e := DError{}
	e.message = message
	e.code = code

	return &e
}
