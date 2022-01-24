import {all, put, takeLatest} from 'redux-saga/effects';

import * as actions from './actions';
import * as actionType from './actionTypes';

export function* getDefinition(action: ReturnType<typeof actions.getDefinition>): any {
  let url = "http://localhost:6001/definition"
  if (action.word !== undefined) {
    url += `?word=${action.word}`
  }
  
  const response = yield fetch(url, {
    headers: {
      "Content-Type": "application/json"
    },
    method: "GET",
  }).then(response => response.json());

  if (!response) {
    return;
  }

  if (response.entries) {
    yield put(actions.getDefinitionSuccess(response.entries));
  } else {
    yield put(actions.getDefinitionFailure(response));
  }
  return;
}

export default function* root() {
  yield all([
    takeLatest(actionType.GET_DEFINITION, getDefinition),
  ]);
}