import * as React from 'react';
import { useDispatch, useSelector } from 'react-redux';
import {Field, withTypes} from 'react-final-form';

import Button from '@components/Button';
import TextInput from '@components/TextInput';
import DefinitionBox from './definitionBox';
import OptionCards from './optionCards';
import { SearchWordForm, validateSearchWordForm } from '../formValidation';
import * as actions from '../actions';
import * as select from '../selectors';

import styles from './index.scss';

const OneWordDefinition: React.FC<{}> = () => {
  const dispatch = useDispatch();

  const definition = useSelector(select.definition);
  const cardOption = useSelector(select.cardOption);
  const error = useSelector(select.error);
  const getDefinitionRequest = useSelector(select.getDefinitionRequest);
 
  // On page load, clear card option so all cards appear, and clear any definitions and errors
  React.useEffect(() => {
    dispatch(actions.setCardOption(""));
    dispatch(actions.clearDefinition());
    dispatch(actions.clearError());
  }, [])

  const handleDefinition = () => {
    dispatch(actions.getDefinition());
  };

  const {Form} = withTypes<SearchWordForm>();
  const onSubmit = (values: SearchWordForm) => {
    dispatch(actions.getDefinition(values.word.trim()));
  }

  // If there's an error message from a previous search and the user begins typing again
  // clear the error message
  const handleChange = () => {
    if (error.message !== '') {
      dispatch(actions.clearError());
    }
  }

  // If a get definition request is unsuccessful, clear any displayed definitions
  React.useEffect(() => {
    if (!getDefinitionRequest.fetching && !getDefinitionRequest.success) {
      dispatch(actions.clearDefinition());
    }
  }, [getDefinitionRequest])


  return (
    <div className={styles.container}>
      {cardOption === "" && <OptionCards cardOption={cardOption}/>}
      {cardOption === "random" &&
        <>
        <h3 className={styles.title}>Your word is... {definition[0].word != '' && (<>{definition[0].word}</>)}</h3>
        {definition[0].word != '' && (
          definition.map((d, i) => (
            <DefinitionBox
              key={i+1}
              number={i+1}
              definition={d.definition}
              wordType={d.wordType}
            />
          ))
        )}
        <Button 
          onClick={() => handleDefinition()}
          text="Find a word!"
          buttonAnimation="hover"
        />
        </>
      }
      {cardOption === "specific" &&
        <>
        <h3 className={styles.title}>{definition[0].word != '' && (<>{definition[0].word}</>)}</h3>
        {definition[0].word != '' && (
          definition.map((d, i) => (
            <DefinitionBox
              key={i+1}
              number={i+1}
              definition={d.definition}
              wordType={d.wordType}
            />
          ))
        )}
        <Form onSubmit={onSubmit} validate={validateSearchWordForm}>
          {({handleSubmit}) => (
            <form id="form" name="form" onSubmit={handleSubmit} onChange={handleChange}>
              <Field name="word">
                {({input, meta}) => (
                  <TextInput
                    {...input}
                    autoComplete="off"
                    className={styles.textInputContainer}
                    error={meta.error && meta.touched ? meta.error : ''}
                    placeholder="E.g. supercalifragilisticexpialidocious"
                  />
                )}
              </Field>
              {error.message && <div className={styles.error}>{error.message}</div>}
              <Button 
                text="Find this word!"
                buttonAnimation="hover"
              />
            </form>
          )}
        </Form>
        </>
      }
    </div>
  )
};

export default OneWordDefinition;