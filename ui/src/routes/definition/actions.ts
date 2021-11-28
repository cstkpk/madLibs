import * as actionType from './actionTypes';

export const getDefinition = () =>
({
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

export type Actions = ReturnType<typeof getDefinition | typeof getDefinitionSuccess | typeof getDefinitionFailure>;