import * as React from 'react';
import { useDispatch, useSelector } from 'react-redux';

import Button from '@components/Button';
import * as actions from '../actions';
import * as select from '../selectors';
import DefinitionBox from "./definitionBox";

import styles from './index.scss';

const oneWordDefinition = () => {

  const dispatch = useDispatch();

  let definition = useSelector(select.definition);

  const handleDefinition = () => {
    dispatch(actions.getDefinition());
  };

  console.log(definition);

  return (
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
      />
    </>
  )
};

export default oneWordDefinition;