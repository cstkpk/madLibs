import {combineReducers} from 'redux';
import {reducer as definition} from './definition/index';

const rootReducer = combineReducers({
  definition,
});

export default rootReducer;