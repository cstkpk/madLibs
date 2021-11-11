package definition

import (
	"context"
	"fmt"

	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/models"
)

// GetDefinition returns the definition of a single word
func GetDefinition(ctx context.Context, word *string) (models.Definition, error) {

	// If a word has not been provided as a parameter, get a random word
	if word == nil {
		w, err := getRandomWord(ctx)
		if err != nil {
			return models.Definition{}, fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
		}
		word = &w
	}

	// Get the word's definition
	def, err := getDefinitionByWord(ctx, *word)
	if err != nil {
		return models.Definition{}, fmt.Errorf("%s -> %w", logger.GetLineInfo(), err)
	}

	return def, nil
}
