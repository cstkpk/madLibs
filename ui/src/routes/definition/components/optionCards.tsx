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
        <div className={styles.text}>
        <h3>Find a word for me</h3>
        <p>This option will generate words for you. No need to look anything up; a new word for you to learn is just a click away!</p>
        </div>
        <Button onClick={handleClick} buttonAnimation="darken" value="random" text="Let's go!"/>
      </div>
      <div className={styles.card}>
        <div className={styles.text}>
        <h3>Look up a word</h3>
        <p>This option will let you look up the definition of any word. If there's any word you'd like to learn more about, click here to look it up.</p>
        </div>
        <Button onClick={handleClick} buttonAnimation="darken" value="specific" text="Let's go!"/>
      </div>
    </div>
  );
};

export default OptionCards;