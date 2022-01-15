import * as React from 'react';
import {Link} from 'react-router-dom';

import styles from './index.scss';

const Navbar = () => {
  return (
    <nav className={styles.nav}>
      <Link to="/" className={styles.navItem1}>
        <span>Home</span>
      </Link>
      <div className={styles.menu}>
        <div className={styles.links}>
          <Link to="/one-word" className={styles.navItems}>
            <span>Find a Word</span>
          </Link>
          <Link to="/one-word" className={styles.navItems}>
            <span>Take me somewhere</span>
          </Link>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;