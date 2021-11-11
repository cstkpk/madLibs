package ready

import (
	"errors"

	busready "github.com/cstkpk/dictionary/api/bus/ready"
	"github.com/cstkpk/dictionary/api/derror"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/models"
	"github.com/go-openapi/runtime/middleware"
)

func Get(params GetReadyParams) middleware.Responder {
	ctx := params.HTTPRequest.Context()

	err := busready.GetReady(ctx)

	if err != nil {
		logger.Error.Println(logger.GetCallInfo(), "->", err.Error())
		var e *derror.DError
		if errors.As(err, &e) {
			status := models.ReturnCode{Code: int64(GetReadyInternalServerErrorCode), Message: e.Error()}
			return NewGetReadyInternalServerError().WithPayload(&status)
		}
	}
	status := models.ReturnCode{Code: int64(GetReadyOKCode)}
	return NewGetReadyOK().WithPayload(&status)
}
