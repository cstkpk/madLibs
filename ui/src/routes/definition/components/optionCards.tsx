import React from 'react';
import {useDispatch} from 'react-redux';

import Button from '@components/Button';
import {setCardOption} from '../actions';

import styles from './optionCards.scss';

interface Props {
  cardOption: string;
}

const OptionCards = (props: Props) => {
  const dispatch = useDispatch();

  const handleClick = (e: any) => {
    dispatch(setCardOption(e.target.value));
  }

  return (
    <div className={styles.cardContainer}>
      <div className={styles.card}>
        <h3>Find any word</h3>
        <p>This option will generate random words for you</p>
        <Button onClick={handleClick} value="random" text="Click me"/>
      </div>
      <div className={styles.card}>
        <h3>Look up a word</h3>
        <p>This option will let you look up the definition of any word</p>
        <Button onClick={handleClick} value="specific" text="Click me"/>
      </div>
    </div>
  );
};

export default OptionCards;