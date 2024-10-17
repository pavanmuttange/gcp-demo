package main

import (
	"fmt"
	"gcp-demo/controllers"

	"github.com/gin-gonic/gin"
)

func main() {

	fmt.Println("gcp demo")

	r := gin.Default()

	r.GET("/hello", controllers.Hello)

	r.Run(":8003")
}
