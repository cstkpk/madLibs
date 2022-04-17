import React from 'react';
import {Route, Switch} from 'react-router-dom';

import Header from '../components/Header';
import Navbar from '../components/Navbar';
import Home from './home/components';
import Definition from './definition/components';

const Main = () => {
  return (
    <>
    <Header/>
    <Navbar/>
    <Switch>
      <Route exact={true} path="/" component={Home} />
      <Route exact={true} path="/one-word" render={() => <Definition key={Date.now()}/>} />
    </Switch>
    </>
  );
};

export default Main;