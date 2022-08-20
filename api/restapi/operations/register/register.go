package register

import (
	"errors"

	busregister "github.com/cstkpk/dictionary/api/bus/register"
	"github.com/cstkpk/dictionary/api/derror"
	"github.com/cstkpk/dictionary/api/logger"
	"github.com/cstkpk/dictionary/api/models"

	"github.com/go-openapi/runtime/middleware"
)

func Post(params PostRegisterParams) middleware.Responder {
	ctx := params.HTTPRequest.Context()

	err := busregister.PostRegister(ctx, *params.NewUserAccount.Email, *params.NewUserAccount.Username, *params.NewUserAccount.Password, *params.NewUserAccount.PasswordConfirm)
	if err != nil {
		logger.Error.Println(logger.GetCallInfo(), "->", err.Error())
		var e *derror.DError
		if errors.As(err, &e) {
			switch e.Code() {
			// 400
			case PostRegisterBadRequestCode:
				status := models.ReturnCode{Code: int64(PostRegisterBadRequestCode), Message: e.Error()}
				return NewPostRegisterBadRequest().WithPayload(&status)
			// 500
			case PostRegisterInternalServerErrorCode:
				status := models.ReturnCode{Code: int64(PostRegisterInternalServerErrorCode), Message: e.Error()}
				return NewPostRegisterInternalServerError().WithPayload(&status)
			}
		}
		// default
		status := models.ReturnCode{Code: int64(PostRegisterInternalServerErrorCode), Message: err.Error()}
		return NewPostRegisterInternalServerError().WithPayload(&status)
	}

	status := models.ReturnCode{Code: int64(PostRegisterOKCode), Message: "User successfully registered"}
	return NewPostRegisterOK().WithPayload(&status)
}
