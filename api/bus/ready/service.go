package ready

import (
	"context"
	"fmt"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/mysql"
)

// GetReady pings the db to make sure that a connection can be established
func GetReady(ctx context.Context) error {

	_, err := mysql.Connect(ctx, constant.DBs.Dictionary)
	if err != nil {
		return fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}
	logger.Info.Println(logger.GetCallInfo(), "Successfully connected to the database")
	return nil
}
