package definition

import (
	"errors"

	busdef "github.com/cstkpk/dictionary/api/bus/definition"
	"github.com/cstkpk/dictionary/api/derror"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/models"

	"github.com/go-openapi/runtime/middleware"
)

func Get(params GetDefinitionParams) middleware.Responder {
	ctx := params.HTTPRequest.Context()

	definition, err := busdef.GetDefinition(ctx, params.Word)
	if err != nil {
		logger.Error.Println(logger.GetCallInfo(), "->", err.Error())
		var e *derror.DError
		if errors.As(err, &e) {
			switch e.Code() {
			// 404
			case GetDefinitionNotFoundCode:
				status := models.ReturnCode{Code: int64(GetDefinitionNotFoundCode), Message: e.Error()}
				return NewGetDefinitionNotFound().WithPayload(&status)
			// 500
			case GetDefinitionInternalServerErrorCode:
				status := models.ReturnCode{Code: int64(GetDefinitionInternalServerErrorCode), Message: e.Error()}
				return NewGetDefinitionInternalServerError().WithPayload(&status)
			}
		}
		// default
		status := models.ReturnCode{Code: int64(GetDefinitionInternalServerErrorCode), Message: err.Error()}
		return NewGetDefinitionInternalServerError().WithPayload(&status)
	}

	return NewGetDefinitionOK().WithPayload(&definition)
}
