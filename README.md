# 專案說明

安裝Docker (需要先辦Docker帳號)
---
[Docker 下載網址](https://www.docker.com/products/docker-desktop)

安裝Go語言
---
[Golang 下載網址](https://golang.org/dl/)

啟動DB環境 (每次重開機之後必做)
---
```shell
docker-compose up -d
```

匯入資料到DB (把data.sql匯入，只有第一次)
---
開啟[資料庫介面](http://127.0.0.1:8080)
輸入以下資訊，進行登入
伺服器: db
帳號: root
密碼: qwe123
資料庫: DB

啟動程式
---
```shell
go build # 有改程式才需要打這個 或是 stu-project.exe 不見的時候
./stu-project.exe
```
[看APP網址](http://127.0.0.1:8000)

可以開啟伺服器給外面全世界
---
./ngrok http 8000
