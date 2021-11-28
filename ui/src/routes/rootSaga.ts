import {all} from 'redux-saga/effects';
import definition from './definition';

function* rootSaga() {
  yield all([
    definition.sagas.default(),
  ]);
};

export default rootSaga;