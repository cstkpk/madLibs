import * as actionType from './actionTypes';

export const getDefinition = (word?: string) =>
({
  word,
  type: actionType.GET_DEFINITION,
} as const);
export const getDefinitionSuccess = (definition: MadLibs.Definition[]) =>
({
  definition,
  type: actionType.GET_DEFINITION_SUCCESS,
} as const);
export const getDefinitionFailure = (error: MadLibs.ReturnCode) => 
({
  error,
  type: actionType.GET_DEFINITION_FAILURE,
} as const);
export const clearError = () =>
({
  type: actionType.CLEAR_ERROR,
} as const);
export const clearDefinition = () =>
({
  type: actionType.CLEAR_DEFINITION,
} as const);

export const setCardOption = (option: string) =>
({
  option,
  type: actionType.SET_CARD_OPTION,
} as const);

export type Actions = ReturnType<typeof getDefinition | typeof getDefinitionSuccess | typeof getDefinitionFailure | typeof setCardOption | typeof clearError | typeof clearDefinition>;