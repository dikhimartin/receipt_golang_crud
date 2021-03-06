package routes

import (
	"receipt/application/controllers"
	"github.com/labstack/echo"
)

func MyProfile(g *echo.Group) {
	DEFINE_URL := "/my_profile"
	g.GET(DEFINE_URL +"/", controllers.MyProfileController)
	g.POST(DEFINE_URL+"/update_inline/:field/", controllers.UpdateInlineProfile)
	g.POST(DEFINE_URL+"/confirm_update/", controllers.UpdateProfileController)
}
