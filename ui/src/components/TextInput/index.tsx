import React from 'react';

import styles from './index.scss';

interface Props {
  onChange: (e: React.ChangeEvent<HTMLInputElement> | any) => void;
  autoComplete?: string;
  className?: string;
  error?: string;
  id?: string;
  label?: string;
  name: string;
  placeholder?: string;
  type?: string;
  value: string;
}

const TextInput: React.FC<Props> = (props) => {

  return (
    <div className={`${styles.container} ${props.className}`}>
      <label htmlFor={props.id || props.name} className={styles.label}>
        {props.label}
      </label>
      <input
        {...props}
        value={props.value || ''}
        className={styles.input}
        placeholder={props.placeholder}
        type="text"
        autoComplete={props.autoComplete}
      />
      <div className={styles.error}>{props.error}</div>
    </div>
  )
  };

export default TextInput;