package register

import (
	"context"
	"database/sql"
	"fmt"
	"strings"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/go-sql-driver/mysql"
)

func insertUserAccount(ctx context.Context, tx *sql.Tx, email, username string) (int64, error) {

	query := `INSERT INTO ` + constant.DT.UserAccounts + ` (email, username) VALUES (?,?)`
	res, err := tx.ExecContext(ctx, query, email, username)
	if err != nil {
		mysqlerr, _ := err.(*mysql.MySQLError)
		if mysqlerr.Number == 1062 {
			if strings.Contains(mysqlerr.Message, "username") {
				return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.UsernameNotUnique)
			} else {
				return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.EmailNotUnique)
			}
		}
		return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	rows, err := res.RowsAffected()
	if err != nil {
		return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}
	if rows != 1 {
		return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}
	id, err := res.LastInsertId()
	if err != nil {
		return 0, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	return id, nil
}

func insertUserPassword(ctx context.Context, tx *sql.Tx, hashpw []byte, id int64) error {

	query := `INSERT INTO ` + constant.DT.UserPasswords + ` (userID, hashedPassword) VALUES (?,?)`
	res, err := tx.ExecContext(ctx, query, id, hashpw)
	if err != nil {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	rows, err := res.RowsAffected()
	if err != nil {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}
	if rows != 1 {
		return fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	return nil
}
