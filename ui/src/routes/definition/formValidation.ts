export interface SearchWordForm {
  word: string;
}

const alpha = /[^a-zA-Z\s]+/;

export const validateSearchWordForm = (values: SearchWordForm): Partial<SearchWordForm> => {
  const errors: Partial<SearchWordForm> = {};

    // word must be a-zA-Z strings, no symbols or numbers
    if (values.word && alpha.test(values.word)) {
      errors.word = 'Word must not contain any numbers or symbols'
    }
    // word must not be empty
    if (!values.word || values.word.trim() === '') {
      errors.word = 'Word must not be empty'
    }

  return errors;
}