import React from 'react';

import styles from './index.scss';

interface Props {
  onClick?: (event: React.MouseEvent<HTMLButtonElement, MouseEvent>) => void;
  className?: string;
  text: string;
}

const Button = (props: Props) => {
  return (
    <div className={styles.container}>
      <button
        className={`${props.className} ${styles.btn}`}
        onClick={props.onClick}>
        {props.text}
      </button>
    </div>
  );
};

export default Button;