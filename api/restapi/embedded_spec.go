// Code generated by go-swagger; DO NOT EDIT.

package restapi

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
)

var (
	// SwaggerJSON embedded version of the swagger document used at generation time
	SwaggerJSON json.RawMessage
	// FlatSwaggerJSON embedded flattened version of the swagger document used at generation time
	FlatSwaggerJSON json.RawMessage
)

func init() {
	SwaggerJSON = json.RawMessage([]byte(`{
  "consumes": [
    "application/json"
  ],
  "produces": [
    "application/json"
  ],
  "schemes": [
    "http"
  ],
  "swagger": "2.0",
  "info": {
    "description": "Mad Libs dictionary game",
    "title": "mad-libs",
    "version": "0.0.1"
  },
  "basePath": "/",
  "paths": {
    "/definition": {
      "get": {
        "description": "Retrieve a row from the entries table and any other entries of additional\ndefinitions for the same word.\n",
        "tags": [
          "definition"
        ],
        "summary": "Get the full definition for one word from the entries table",
        "parameters": [
          {
            "type": "string",
            "name": "word",
            "in": "query"
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "schema": {
              "$ref": "#/definitions/Definition"
            }
          },
          "404": {
            "description": "Not found",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "500": {
            "description": "Internal service error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "default": {
            "description": "Unexpected error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          }
        }
      }
    },
    "/ready": {
      "get": {
        "tags": [
          "ready"
        ],
        "summary": "Verify that the API is running and ready to accept requests",
        "responses": {
          "200": {
            "description": "Success",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "500": {
            "description": "Internal service error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "default": {
            "description": "Unexpected error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          }
        }
      }
    }
  },
  "definitions": {
    "Definition": {
      "type": "object",
      "properties": {
        "entries": {
          "type": "array",
          "items": {
            "$ref": "#/definitions/Entry"
          }
        }
      }
    },
    "Entry": {
      "type": "object",
      "properties": {
        "definition": {
          "type": "string"
        },
        "word": {
          "type": "string"
        },
        "wordType": {
          "type": "string"
        }
      }
    },
    "ReturnCode": {
      "type": "object",
      "properties": {
        "code": {
          "type": "integer",
          "readOnly": true
        },
        "message": {
          "type": "string",
          "readOnly": true
        }
      }
    }
  }
}`))
	FlatSwaggerJSON = json.RawMessage([]byte(`{
  "consumes": [
    "application/json"
  ],
  "produces": [
    "application/json"
  ],
  "schemes": [
    "http"
  ],
  "swagger": "2.0",
  "info": {
    "description": "Mad Libs dictionary game",
    "title": "mad-libs",
    "version": "0.0.1"
  },
  "basePath": "/",
  "paths": {
    "/definition": {
      "get": {
        "description": "Retrieve a row from the entries table and any other entries of additional\ndefinitions for the same word.\n",
        "tags": [
          "definition"
        ],
        "summary": "Get the full definition for one word from the entries table",
        "parameters": [
          {
            "type": "string",
            "name": "word",
            "in": "query"
          }
        ],
        "responses": {
          "200": {
            "description": "Success",
            "schema": {
              "$ref": "#/definitions/Definition"
            }
          },
          "404": {
            "description": "Not found",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "500": {
            "description": "Internal service error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "default": {
            "description": "Unexpected error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          }
        }
      }
    },
    "/ready": {
      "get": {
        "tags": [
          "ready"
        ],
        "summary": "Verify that the API is running and ready to accept requests",
        "responses": {
          "200": {
            "description": "Success",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "500": {
            "description": "Internal service error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          },
          "default": {
            "description": "Unexpected error",
            "schema": {
              "$ref": "#/definitions/ReturnCode"
            }
          }
        }
      }
    }
  },
  "definitions": {
    "Definition": {
      "type": "object",
      "properties": {
        "entries": {
          "type": "array",
          "items": {
            "$ref": "#/definitions/Entry"
          }
        }
      }
    },
    "Entry": {
      "type": "object",
      "properties": {
        "definition": {
          "type": "string"
        },
        "word": {
          "type": "string"
        },
        "wordType": {
          "type": "string"
        }
      }
    },
    "ReturnCode": {
      "type": "object",
      "properties": {
        "code": {
          "type": "integer",
          "readOnly": true
        },
        "message": {
          "type": "string",
          "readOnly": true
        }
      }
    }
  }
}`))
}