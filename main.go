package main

import (
	"bytes"
	"encoding/base64"
	"net/http"
	"os/exec"

	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
)

func main() {
	// 建立伺服器
	伺服器 := gin.Default()

	// 設定問路連線
	伺服器.GET("/stu", 問路連線)

	// 設定檔案系統
	伺服器.NoRoute(檔案系統)

	// 伺服器開始跑
	伺服器.Run(":8000")
}

// 檔案系統
func 檔案系統(c *gin.Context) {
	fs := static.Serve("/", static.LocalFile("./public", true))
	fs(c)
}

// 問路連線
func 問路連線(c *gin.Context) {
	upgrader := websocket.Upgrader{
		CheckOrigin: func(r *http.Request) bool {
			return true
		},
	}
	conn, err := upgrader.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		c.AbortWithError(http.StatusInternalServerError, err)
		return
	}
	defer conn.Close()

	for {
		_, _, err := conn.ReadMessage()
		if err != nil {
			return
		}

		err = conn.WriteMessage(websocket.TextMessage, []byte("載入中~"))
		if err != nil {
			return
		}

		cmd := exec.Command("python", "./main.py")
		stdout := bytes.NewBuffer([]byte{})
		stderr := bytes.NewBuffer([]byte{})
		cmd.Stdout = stdout
		cmd.Stderr = stderr

		err = cmd.Start()
		if err != nil {
			err = conn.WriteMessage(websocket.TextMessage, []byte(err.Error()))
			if err != nil {
				return
			}
			continue
		} else {
			err = conn.WriteMessage(websocket.TextMessage, []byte("請說~"))
			if err != nil {
				return
			}
		}

		err = cmd.Wait()
		if err != nil {
			err = conn.WriteMessage(websocket.TextMessage, stderr.Bytes())
			if err != nil {
				return
			}
		} else {
			tt, err := base64.StdEncoding.DecodeString(string(stdout.Bytes()))
			if err != nil {
				conn.WriteMessage(websocket.TextMessage, []byte(err.Error()))
			} else {
				conn.WriteMessage(websocket.TextMessage, tt)
			}
		}
	}
}
