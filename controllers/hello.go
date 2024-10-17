package controllers

import (
	"github.com/gin-gonic/gin"
)

func Hello(c *gin.Context) {

	c.AbortWithStatus(200)

	c.JSONP(200, "hello")
}
