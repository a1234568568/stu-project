# 專案說明

安裝Docker (需要先辦Docker帳號)
---
[Docker 下載網址](https://www.docker.com/products/docker-desktop)

安裝Go語言
---
[Golang 下載網址](https://golang.org/dl/)

下載Windows用的PyAudio (Windows才需要)
---
點開網址: https://github.com/intxcc/pyaudio_portaudio/releases  
下載: PyAudio-0.2.11-cp37-cp37m-win_amd64.whl
接著到下載檔案的地方，開終端機執行以下指令
```shell
pip install PyAudio-0.2.11-cp37-cp37m-win_amd64.whl
```

安裝Python必要套件
---
```shell
# ! Windows ! 使用者執行以下指令
pip install jieba SpeechRecognition

# ! 不是 Windows ! 使用者執行以下指令
pip3 install jieba pyaudio SpeechRecognition
```

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
# 測試能布農動
python3 main.py

# 真的去執行專案的
go build # 有改程式才需要打這個 或是 stu-project.exe 不見的時候
./stu-project.exe
```
[看APP網址](http://127.0.0.1:8000)
