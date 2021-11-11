package mysql

import (
	"context"
	"database/sql"
	"fmt"
	"os"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"

	// mysql driver
	_ "github.com/go-sql-driver/mysql"
)

// Connect initiates a connection to the database
// TODO: Create a connection pool to the db
// For now just pinging it
func Connect(ctx context.Context, dbName string) (*sql.DB, error) {
	dbusername := os.Getenv("MARIA_USERNAME")
	dbpassword := os.Getenv("MARIA_PASSWORD")

	db, err := sql.Open("mysql", dbusername+":"+dbpassword+"@tcp(127.0.0.1:3306)/"+dbName)
	if err != nil {
		return nil, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbConnectionFailure)
	}

	err = db.Ping()
	if err != nil {
		return nil, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbConnectionFailure)
	}

	return db, nil
}
