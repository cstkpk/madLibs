import produce from 'immer';
import {Actions} from './actions';
import * as actionType from './actionTypes';

interface State {
  cardOption: string;
  getDefinitionRequest: {
    error: MadLibs.ReturnCode;
    fetching: boolean;
    success: boolean;
  };
  definition: MadLibs.Definition[];
};

export const INITIAL_STATE: State = {
  cardOption: '',
  getDefinitionRequest: {
    error: {
      code: 0,
      message: '',
    },
    fetching: false,
    success: false,
  },
  definition: [
    {
      definition: '',
      word: '',
      wordType: '',
    },
  ],
};

const reducer = (state: State = INITIAL_STATE, action: Actions): State =>
  produce(state, (draft) => {
    switch(action.type) {
      case actionType.GET_DEFINITION:
        draft.getDefinitionRequest.error = INITIAL_STATE.getDefinitionRequest.error;
        draft.getDefinitionRequest.fetching = true;
        draft.getDefinitionRequest.success = INITIAL_STATE.getDefinitionRequest.success;
        return;
      case actionType.GET_DEFINITION_SUCCESS:
        draft.getDefinitionRequest.error = INITIAL_STATE.getDefinitionRequest.error;
        draft.getDefinitionRequest.fetching = INITIAL_STATE.getDefinitionRequest.fetching;
        draft.getDefinitionRequest.success = true;
        draft.definition = action.definition;
        return;
      case actionType.GET_DEFINITION_FAILURE:
        draft.getDefinitionRequest.error = action.error;
        draft.getDefinitionRequest.fetching = INITIAL_STATE.getDefinitionRequest.fetching;
        draft.getDefinitionRequest.success = INITIAL_STATE.getDefinitionRequest.success;
        return;
      case actionType.CLEAR_ERROR:
        draft.getDefinitionRequest.error = INITIAL_STATE.getDefinitionRequest.error;
        return;
      case actionType.CLEAR_DEFINITION:
        draft.definition = INITIAL_STATE.definition;
        return;
      case actionType.SET_CARD_OPTION:
        draft.cardOption = action.option;
        return;
      default:
        return state;
    }
  });

export default reducer;
