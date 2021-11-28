import React from 'react';
import {Route, Switch} from 'react-router-dom';

import Home from './home/components';
import Definition from './definition/components';

const Main = () => {
  return (
    <>
    <Switch>
      <Route exact={true} path="/" component={Home} />
      <Route exact={true} path="/one-word" component={Definition} />
    </Switch>
    </>
  );
};

export default Main;