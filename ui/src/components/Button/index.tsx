import React from 'react';

import styles from './index.scss';

interface Props {
  onClick?: (event: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  className?: string;
  text: string;
  value?: string;
  buttonAnimation?: string;
}

const Button = (props: Props) => {
  
  return (
    <div className={styles.container}>
      <button
        className={`${props.className} ${styles.btn} ${styles[props.buttonAnimation]}`}
        value={props.value}
        onClick={props.onClick}>
        {props.text}
      </button>
    </div>
  );
};

export default Button;