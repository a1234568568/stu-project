package main

import (
	"fmt"
	"strings"

	_ "github.com/go-sql-driver/mysql"
	"github.com/jinzhu/gorm"
	"github.com/yanyiwu/gojieba"
)

var db *gorm.DB

func 到資料庫撈全部資料() (
	店家資料 []StoreModel, err error,
) {
	店家資料 = []StoreModel{}

	// 開始找資料庫
	err = db.New().Find(&店家資料).Error
	if err != nil {
		return
	}

	return
}

func 到資料庫找店家資料(店名 string) (
	店家資料 StoreModel,
	有資料 bool, err error,
) {
	店名 = 先過濾店名文字(店名)

	// 開始找資料庫
	err = db.New().Where("UPPER(`StoreName`) LIKE ?", "%"+店名+"%").First(&店家資料).Error
	if err != nil {
		if gorm.IsRecordNotFoundError(err) {
			err = nil
			return
		}
		return
	}

	// 搜尋出來後，搜尋次數+1
	店家資料.Search++
	err = db.Save(&店家資料).Error
	if err != nil {
		return
	}

	有資料 = true
	return
}

func 先過濾店名文字(店名 string) string {
	x := gojieba.NewJieba()
	defer x.Free()

	// 想要過濾的字典檔
	dict := map[string]int{
		"我想找": 0,
		"我想去": 0,
		"我要找": 1,
		"我要去": 1,
		"找":   2,
		"在哪裡": 3,
		"在哪":  4,
	}
	for k := range dict {
		x.AddWord(k)
	}

	words := x.Cut(店名, true)
	s := []string{}
	for _, word := range words {
		if _, isInDict := dict[word]; !isInDict {
			s = append(s, word)
		}
	}
	店名 = strings.Join(s, "")
	fmt.Println("精确模式:", strings.Join(words, "/"))
	fmt.Println("過濾後:", 店名)

	return 店名
}

// StoreModel 商家模組
type StoreModel struct {
	No            string `json:"id" gorm:"column:No;type:varchar(50);PRIMARY_KEY;NOT NULL;"`
	StoreName     string `json:"store_name" gorm:"column:StoreName;type:varchar(50);NOT NULL;"`
	SalesType     string `json:"store_type" gorm:"column:SalesType;type:varchar(50);"`
	Price         string `json:"price" gorm:"column:Price;type:varchar(50);"`
	Floor         string `json:"floor" gorm:"column:Floor;type:varchar(5);NOT NULL"`
	Tel           string `json:"tel" gorm:"column:tel;type:varchar(50);"`
	BusinessHours string `json:"work_time" gorm:"column:Business hours;type:varchar(50);"`
	Details       string `json:"detail" gorm:"column:Details;type:longtext;"`
	Search        int    `json:"search" gorm:"column:search;type:int(11);NOT NULL"`
}

// TableName 資料表名稱
func (StoreModel) TableName() string {
	return "StoreDetails"
}
