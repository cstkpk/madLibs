package register

import (
	"context"
	"fmt"
	"regexp"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"
	"golang.org/x/crypto/bcrypt"
)

// PostRegister verifies new user attributes and adds user information to the database
func PostRegister(ctx context.Context, email, username, password, passwordConfirm string) error {

	// Make sure email is valid
	e, err := regexp.MatchString(`^[a-z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,4}$`, email)
	if err != nil {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.InternalServer)
	}
	if !e {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), constant.Errors.EmailInvalid)
	}

	// Make sure username is valid
	if len(username) < 6 || len(username) > 20 {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), constant.Errors.UsernameInvalid)
	}
	m, err := regexp.MatchString("^[a-zA-z\\d]+$", username)
	if err != nil {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.InternalServer)
	}
	if !m {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), constant.Errors.UsernameInvalid)
	}

	// Make sure password is valid
	if len(password) < 8 || len(password) > 30 {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), constant.Errors.PasswordLengthInvalid)
	}
	if password != passwordConfirm {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), constant.Errors.PasswordsNotEqual)
	}
	// Hash password
	hashpw, err := bcrypt.GenerateFromPassword([]byte(password), bcrypt.DefaultCost)
	if err != nil {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.InternalServer)
	}

	// If all user account components are valid, run database transaction to create user account
	err = postUserAccount(ctx, email, username, hashpw)
	if err != nil {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}

	logger.Info.Printf("%s Successfully created user account for %s", logger.GetCallInfo(), username)
	return nil
}
