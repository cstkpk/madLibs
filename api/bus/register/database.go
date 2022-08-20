package register

import (
	"context"
	"fmt"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/mysql"
)

func postUserAccount(ctx context.Context, email, username string, hashpw []byte) error {
	db, err := mysql.Connect(ctx, constant.DBs.Dictionary)
	if err != nil {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}
	tx, err := db.BeginTx(ctx, nil)
	if err != nil {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}

	// Add user details to userAccounts table
	id, err := insertUserAccount(ctx, tx, email, username)
	if err != nil {
		tx.Rollback()
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}
	// Add user password to userPasswords table
	err = insertUserPassword(ctx, tx, hashpw, id)
	if err != nil {
		tx.Rollback()
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}

	err = tx.Commit()
	if err != nil {
		tx.Rollback()
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	return nil
}
