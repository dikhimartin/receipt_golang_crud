package lib

import (
	"net/http"
	"strings"
	"strconv"
	"fmt"
	"github.com/labstack/echo"
	"github.com/go-redis/redis"
)

func RedisConnection() *redis.Client {
	redisHost  := GetEnv("REDIS_HOST")
	redisPort  := GetEnv("REDIS_PORT")
	redisDB, _ := strconv.Atoi(GetEnv("REDIS_DB"))

	client := redis.NewClient(&redis.Options{
		Addr 		: ""+redisHost+":"+redisPort+"",
		Password 	: "",
		DB 			: redisDB,
	})

	_, err := client.Ping().Result()
	if err != nil {
		fmt.Println(err)
		logs.Println(err)
	}

	return client
}

func GetTokenRedis(key string)string{
	redis_token, err := RedisConnection().Get(key).Result()
	if err != nil {
		logs.Println(err)
	}
	return redis_token
}


func CheckRedisWithCookie(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		cookie, err := c.Cookie(COOKIE_NAME)
		if err != nil {
			if strings.Contains(err.Error(), "named cookie not present") {
				logs.Println("err contains")
				logs.Println(err)
				return c.Redirect(http.StatusTemporaryRedirect, "/session_expire")
			}

			logs.Println("err cookie")
			logs.Println(err)
			return c.Redirect(http.StatusTemporaryRedirect, "/session_expire")
		}

		if cookie.Value != "" {
			client := RedisConnection()
			val, err := client.Get(cookie.Value).Result()
			if err != nil {
				fmt.Println(err)
			}

			if val != "" {
				return next(c)
			}
			logs.Println("Redis Empty")
			return c.Redirect(http.StatusTemporaryRedirect, "/session_expire")
		}
		logs.Println("Cookie Empty")
		return c.Redirect(http.StatusTemporaryRedirect, "/session_expire")

	}
}