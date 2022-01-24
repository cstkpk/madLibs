import {GlobalState} from '@routes/store';

export const definition = (state: GlobalState) => state.definition.definition;
export const cardOption = (state: GlobalState) => state.definition.cardOption;
export const error = (state: GlobalState) => state.definition.getDefinitionRequest.error;
export const getDefinitionRequest = (state: GlobalState) => state.definition.getDefinitionRequest;
