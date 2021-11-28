import * as React from 'react';

import styles from './index.scss';

interface Props {
  number: number;
  definition: string;
  wordType: string;
}

const definitionBox = (props: Props) => {  
  return (
    <div className={styles.text}>
      <h4>Definition #{props.number}</h4>
      <p>Part of speech: {props.wordType}</p>
      <p className={styles.animateText}>{props.definition}</p>
    </div>
  );
};

export default definitionBox;