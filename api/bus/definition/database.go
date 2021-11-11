package definition

import (
	"context"
	"fmt"
	"math/rand"
	"time"

	"github.com/cstkpk/dictionary/api/constant"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/models"
	"github.com/cstkpk/dictionary/api/mysql"
)

// getRandomWord returns a random word from the entries table
func getRandomWord(ctx context.Context) (string, error) {

	db, err := mysql.Connect(ctx, constant.DBs.Dictionary)
	if err != nil {
		return "", fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbConnectionFailure)
	}

	query := `SELECT count(*) FROM ` + constant.DT.Entries

	var count int
	err = db.QueryRowContext(ctx, query).Scan(&count)
	if err != nil {
		return "", fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	rand.Seed(time.Now().UnixNano())
	id := rand.Intn(count)

	queryWord := `SELECT word FROM ` + constant.DT.Entries +
		` WHERE id = ?`

	var word string
	err = db.QueryRowContext(ctx, queryWord, id).Scan(&word)
	if err != nil {
		return "", fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}

	logger.Info.Printf("%s Getting definition for random word %s with id %v", logger.GetCallInfo(), word, id)
	return word, nil
}

// getDefinitionByWord returns the definition of a word
func getDefinitionByWord(ctx context.Context, word string) (models.Definition, error) {

	db, err := mysql.Connect(ctx, constant.DBs.Dictionary)
	if err != nil {
		return models.Definition{}, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbConnectionFailure)
	}

	query := `SELECT word, wordType, definition FROM ` + constant.DT.Entries +
		` WHERE word = ?`

	rows, err := db.QueryContext(ctx, query, word)
	if err != nil {
		return models.Definition{}, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
	}
	defer rows.Close()

	var definitionList []*models.Entry

	for rows.Next() {
		var word, wordType, definition string
		err := rows.Scan(
			&word,
			&wordType,
			&definition,
		)
		if err != nil {
			return models.Definition{}, fmt.Errorf("%s %s -> %w", logger.GetLineInfo(), err.Error(), constant.Errors.DbQueryFailure)
		}
		entry := models.Entry{
			Word:       word,
			WordType:   wordType,
			Definition: definition,
		}
		definitionList = append(definitionList, &entry)
	}

	if len(definitionList) < 1 {
		return models.Definition{}, fmt.Errorf("%s No DB entries for word %s -> %w", logger.GetLineInfo(), word, constant.Errors.NoDefinitionFound)
	}

	definition := models.Definition{
		Entries: definitionList,
	}

	logger.Info.Printf("%s Successfully retrieved definition for word %s", logger.GetCallInfo(), word)
	return definition, nil
}
