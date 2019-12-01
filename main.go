package main

import (
	"log"
	"net/http"

	"github.com/gin-contrib/static"
	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"github.com/jinzhu/gorm"
)

func main() {
	var err error
	db, err = gorm.Open("mysql", "root:qwe123@/DB?charset=utf8&parseTime=True&loc=Local")
	if err != nil {
		log.Fatal("請確認資料庫是否有啟動！")
	}

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
		_, text, err := conn.ReadMessage()
		if err != nil {
			return
		}

		店家資料, 有資料, err := 到資料庫找店家資料(string(text))

		data := map[string]interface{}{
			"text": string(text),
			"main": map[string]interface{}{},
		}
		if err != nil {
			data["text"] = "系統發生錯誤: " + err.Error()
		} else if !有資料 {
			data["text"] = string(text) + "。 找不到相關店家資料"
		} else {
			data["main"] = map[string]interface{}{
				店家資料.No: 店家資料,
			}
		}

		err = conn.WriteJSON(data)
		if err != nil {
			return
		}

		// err = conn.WriteMessage(websocket.TextMessage, []byte("載入中~"))
		// if err != nil {
		// 	return
		// }

		// cmd := exec.Command("python3", "./main.py")
		// stdout := bytes.NewBuffer([]byte{})
		// stderr := bytes.NewBuffer([]byte{})
		// cmd.Stdout = stdout
		// cmd.Stderr = stderr

		// err = cmd.Start()
		// if err != nil {
		// 	err = conn.WriteMessage(websocket.TextMessage, []byte(err.Error()))
		// 	if err != nil {
		// 		return
		// 	}
		// 	continue
		// } else {
		// 	err = conn.WriteMessage(websocket.TextMessage, []byte("請說~"))
		// 	if err != nil {
		// 		return
		// 	}
		// }

		// err = cmd.Wait()
		// if err != nil {
		// 	err = conn.WriteMessage(websocket.TextMessage, stderr.Bytes())
		// 	if err != nil {
		// 		return
		// 	}
		// } else {
		// 	tt, err := base64.StdEncoding.DecodeString(string(stdout.Bytes()))
		// 	if err != nil {
		// 		conn.WriteMessage(websocket.TextMessage, []byte(err.Error()))
		// 	} else {
		// 		conn.WriteMessage(websocket.TextMessage, tt)
		// 	}
		// }
	}
}
