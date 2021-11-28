declare namespace MadLibs {
  
  interface ReturnCode {
    code: number;
    message: string;
  }

  // Definition is a single word definition
  interface Definition {
    word: string;
    wordType: string;
    definition: string;
  }
}