DROP TABLE IF EXISTS `StoreDetails`;
CREATE TABLE `StoreDetails` (
  `No` varchar(50) NOT NULL,
  `StoreName` varchar(50) NOT NULL,
  `SalesType` varchar(50) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `Floor` varchar(5) NOT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `Business hours` varchar(50) DEFAULT NULL,
  `Details` longtext,
  PRIMARY KEY (`No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `StoreDetails` (`No`, `StoreName`, `SalesType`, `Price`, `Floor`, `tel`, `Business hours`, `Details`) VALUES
('BLB001',	'Hour Passion',	'時尚精品',	NULL,	'LB',	'07-656-9598',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Hour Passion 是一個非常特別的鐘錶複合式專賣店, 由世界最大鐘錶集團SWATCH Group直營提供與全球同步的高品質瑞士製錶。包含 : 浪琴LONGINES, 雷達RADO, 天梭TISSOT, 美度MIDO, 漢米爾頓HAMILTON, 凱文克萊Calvin Klein手錶與珠寶, SWATCH , 以及飛菲童錶FLIK FLAK等共8個品牌。'),
('BLB002',	'a.testoni',	'時尚精品',	NULL,	'LB',	'07-6569299',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1929年創立的a.testoni，以其精湛手工製鞋與皮件製造聞名於世。每件產品均標誌著「義大利製造」的優良傳統。不論是皮鞋、手袋或其他皮製品均經過精雕細琢、充滿典雅和高貴氣派，a.testoni 已被公認為尊貴的象徵。'),
('BLB003',	'SWAROVSKI',	'時尚精品',	NULL,	'LB',	'07-6569056',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'施華洛世奇是全球首屈一指的切割水晶製造商，自創立以來，施華洛世奇就以創新為己任，致力為首飾、時裝、家居裝飾、文化、研究和工業發展等範疇開創潮流。優質創意水晶產品採用多元化的款式和設計，將時尚潮流反映在產品系列內。施華洛世奇儼然就是優質、創意、精準和細緻工藝的代名詞。'),
('BLB004',	'TUMI',	'時尚精品',	NULL,	'LB',	'07-656-8195',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'成立於1975年，TUMI已備受全球最有眼光的專業人士、商界領袖、體育和娛樂明星以及高要求旅者的青睞。今天，從紐約到巴黎，從倫敦到東京，TUMI已經在全球超過75個國家開設了350家專賣店，產品遍佈世界各大頂級百貨商店和旅行箱包專賣店。'),
('BLB005',	'BAGSTAgE',	'時尚精品',	NULL,	'LB',	'07-656-9638',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'因為相信一只富有個性與時尚的包款，更能在簡約的穿著中，從而展現專屬於妳的個性與品味，BAGSTAgE自2008年創立以來，每一季努力走訪法國、義大利等時尚重鎮，發掘最具實力的皮件設計師品牌，將其對時尚的獨特見解，透過最奢華的皮革與頂級工藝，透過一只只不同風格的美麗包款完美呈現。'),
('BLB006',	'HUGO BOSS',	'時尚精品',	NULL,	'LB',	'07-6569071',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('BLB007',	'CERRUTI 1881',	'時尚精品',	NULL,	'LB',	'07-656-9101',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1881年Cerruti兄弟在義大利比艾拉創辦Cerruti公司，之後以頂級羊毛及奢侈織物服裝名聲雀起。上世紀50年代，時年僅20歲的Nino Cerruti接掌公司，並憑藉卓越才幹讓Cerruti之名享譽全球。作為生產方面的專家，Nino對家族織造工坊進行了現代化改造，又在米蘭投資興建兩家工廠。1957年，他在這裡推出了自己的首個男裝系列，成就世界男裝史上一段不朽傳奇。得益於 Nino 與好萊塢的密切關係，以及作品的巨大魅力，Cerruti在世界各地迅速崛起。'),
('BLB008',	'MARC JACOBS',	'時尚精品',	NULL,	'LB',	'07-6568242',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'MARC JACOBS 於1963年4月9日在紐約出生。1981年，他在High School of Art and Design 畢業，之後入讀 Parson’s School of Design。Jacobs 在 Parson’s 讀書時，已屢獲設計獎項。1984年，他更榮獲︰“The Perry Ellis Gold Thimble Award”、“The Chester Weinberg Gold Thimble Award”及“The Design Student of the Year Award”。1997年對MARC JACOBS 來說，可說是重要的一年。1月，Jacobs 加盟Louis Vuitton擔任Artistic Director 一職。目前MARC JACOBS旗下總共擁有以下系列，包含MARC JACOBS時裝系列、MARC BY MARC JACOBS女裝與男裝時裝系列、 MARC BY MARC JACOBS泳裝系列、鞋履、眼鏡、太陽眼鏡、手錶、香水及童裝系列。'),
('BLB009',	'DAKS outlet',	'時尚精品',	NULL,	'LB',	'07-6568320',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'DAKS源起於1894年品牌創辦人Simeon Simpson於倫敦市區成立裁縫預約服務，由於百年來對於布料品質與裁縫細節的重視，追求完美的理念、高品質、價格合理的原則，曾三度獲得英國皇室指定使用，而位於品牌logo上的3個皇家徽章，更成為品牌最足以為傲的品質與風格保證。'),
('BLB010',	'Aquascutum',	'時尚精品',	NULL,	'LB',	'07-6568348',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'英國著名品牌Aquascutum雅格獅丹於1851年創立，以形象高雅的男女服飾皮件而馳譽世界，經典格紋與風衣為品牌象徵。屢獲英國皇家工業獎，更成為英國皇室御品用品牌，備受全球名士淑女的愛戴。迄今160年，仍然堅持品質和優雅高尚集於一身的完美風格。'),
('BLB011',	'AllSaints',	'時尚精品',	NULL,	'LB',	'07-656-9358',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'源自英國東倫敦的時尚品牌AllSaints擁有數位思維並充滿實驗精神的創新設計，體現在其男女裝及鞋包配件、羊頭骷髏 logo及頹廢工業風與縫紉機的店內風格中乃至全球購物平台。AllSaints實驗創新且饒富細節的系列設計商品精準傳達品牌「態度」、「個性」與「創造力」的核心價值。 AllSaints不只將充滿創意與注重細節的品牌精神表現在其設計作品上，同時也是一個全方位多媒體平台，透過另組製片公司以音樂和微電影推廣藝文活動等方式，從更多面向傳達來自東倫敦的自信、態度、創意與獨立精神。AllSaints也與倫敦Dazed 集團合作，共同創作動態影像紀錄，為全球各地新興歌手或樂團拍攝微電影。AllSaints從騎士夾克到丹寧、 從皮件到眼鏡、乃至數位理念到創意內涵，無一不傳達著品牌核心價值。'),
('BLB012',	'Michael Kors',	'時尚精品',	NULL,	'LB',	'07-656-9559',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'MICHAEL KORS為世界著名的時尚設計師，以其命名的公司成立於1981年，旗下的產品包括皮件、配飾、女鞋、手錶、高级女裝及香水等。他的時尚足跡遍布全世界各地著名地點，包括纽约、比佛利山莊、芝加哥、倫敦、米蘭、巴黎、慕尼黑、伊斯坦堡、杜拜、首爾、東京和香港等，並不斷開拓更多的市場，為全球時尚狂熱人士提供最流行的選擇。MICHAEL KORS設計風格宛如一場「對比」的盛宴，經典優雅而又穿著輕鬆；精緻剪裁而又充滿魅力；性感迷人而又奢華。 將這些對比的元素融合，充滿驚喜的配搭與細節，精湛的工藝，讓您無論身處世界任一個角落都可以感受在家般的舒適剪裁，感受Michael Kors為全球顧客帶來的「Jet Set」生活理念。'),
('BLB013',	'Folli Follie',	'時尚精品',	NULL,	'LB',	'07-6568110',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Folli Follie於1982年由現任總裁Dimitris和總裁夫人Ketty Koutsolioutsos創立，走過近三分之一個世紀，Folli Follie逐漸在全球奠定了堅強的基礎，並努力在流行、獨特與創新當中取得優雅的平衡。設計風格強、搭配性高、加上親切的價格政策，使得Folli Follie從發源地希臘拓展版圖至歐美，並席捲亞洲各國。Folli Follie於希臘雅典設立第一家直營店，1995年進入日本、1998年進入香港，且於1999年進入台灣市場，目前全球已經超過26個國家、600個零售據點，至今仍不斷成長，成為舉世知名的國際流行精品品牌。於1997年，Folli Follie正式於希臘雅典股票交易市場公開上市，從此奠立了品牌成為跨國企業的基礎。'),
('BLB015',	'NET JEWELRY',	'時尚精品',	NULL,	'LB',	'07-6569095',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'NET JEWELRY一向秉持總公司創業的精神，鑽飾鑲台皆來自於日本師傅的精湛工藝、高超的鑲工技術和嚴謹的態度，因此受到顧客的肯定與信賴。此外，多元化的設計、合理的定價策略和優良的售後服務，開創鑽飾潮流。NET JEWELRY也是第一家首創「汰舊換新商品回收」，將此突破性的概念引入台灣，讓每位喜新厭舊、追隨潮流的您，無負擔的擁有最新鑽飾。'),
('BLB017',	'Brooks Brothers',	'時尚精品',	NULL,	'LB',	'07-6569116',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'美國經典品牌Brooks Brothers於西元1818年創立，以絕佳品質、完美結合創新與經典的設計稱著，廣受名人世代、政界領袖、好萊塢傳奇人物青睞；講究穿著舒適，兼顧高雅品味與英挺剪裁的品牌精神，打造優雅士紳風格，對男士時裝界極具影響力，更是美式經典服飾的典範與創造者。不少名人世代、政界領袖、好萊塢傳奇人物…等都是Brooks Brothers的忠實顧客'),
('BLB018',	'Max Mara',	'時尚精品',	NULL,	'LB',	'02-66403831',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Fairton Labels 以義大利MaxMara Fashion Group為主，旗下擁有MaxMara、SPORTMAX、WEEKEND BY MaxMara、MARINA RINALDI、iBLUES、MARELLA、MAX&Co.、PENNYBLACK共8個獨立品牌，而擁有法國優雅血統的時尚品牌KOOKAI與美國進口的手工牛仔褲品牌 7 for all mankind亦為Fairton Labels旗下品牌，每個品牌皆極具獨特風格。家喻戶曉的時尚品牌MaxMara向來以頂級訂製服精緻的剪裁著稱，巧妙結合各種質材的完美設計，充分展現女人內斂優雅的絕美氣息。'),
('BLB020',	'KENT&CURWEN',	'時尚精品',	NULL,	'LB',	'07-6568484',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'享譽盛名的Kent & Curwen 品牌為兼具時尚與品味的高級男裝代表，Kent & Curwen 與時並進的精神，結合品牌經典出的尊貴運動傳統元素，設計出一系列非凡華貴、設計感且優雅的正裝和休閒男裝，被譽為「能夠真實呈現英式男士服裝精萃的完美典範」。'),
('BLB021',	'Club21',	'時尚精品',	NULL,	'LB',	'07-656-8266',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Club 21是1972年成立於新加坡的一家時尚精品集團。其產品系列包括時裝、配飾和家居用品。Club 21位於澳洲、香港、印尼、馬來西亞、新加坡、台灣、泰國皆設有分公司。Club 21 Taiwan目前台灣代理品牌包括: A|X Armani Exchange, BLACKBARRETT by NEIL BARRETT, CK CALVIN KLEIN, 3.1 Phillip Lim, Proenza Schouler, rag & bone，而位於義大的Club 21 Outlet 所販售品牌包含: BLACKBARRETT by NEIL BARRETT, 3.1 Phillip Lim, Proenza Schouler, rag & bone'),
('BLB026',	'agnès b.',	'時尚精品',	NULL,	'LB',	'07-6569320',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Agnès b. 原名Agnès Troublé， b. 是其丈夫的姓氏Christian Bourgois的簡寫。Agnès 曾任法國 ELLE 時裝雜誌服裝編緝，後來，更於著名的 Dorothee Bis及Cacharel 等時裝公司任職形象設計師。1973年，她正式自立品牌，兩年後在巴黎開設首間 Agnès b. 女裝店；而台灣地區是自2001年由法國正式進駐開設第一間男、女裝的複合店。迄今，全世界有超過120家店。'),
('BLB027',	'CK CALVIN KLEIN',	'時尚精品',	NULL,	'LB',	'07-656-8066',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'CK CALVIN KLEIN為引領潮流的當代時裝品牌。品牌設計風格融合極簡與時尚運動美學，並呈現出令人意想不到的性感魅力。對於那些懂得欣賞生活中更精緻的事物，但又不想要盲目追隨時尚潮流的人來說，CK CALVIN KLEIN是一星期七天穿搭的最佳品牌選擇。'),
('BLB031',	'POLO RALPH LAUREN',	'時尚精品',	NULL,	'LB',	'07-6568056',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Ralph Lauren Corporation (紐約證券交易所上市代號：RL) 是高級生活精品市場首屈一指的設計、市場營銷及分銷企業，產品分為四類：服裝、家居用品、配飾及香薰。品牌逾46年來一直享譽國際，獨特形象深入民心，不斷拓展多元化產品、品牌及國際市場。公司旗下各品牌，包括Polo Ralph Lauren for Men, Polo Ralph Lauren for Women、Ralph Lauren Purple Label、 Ralph Lauren Collection、Black Label、Lauren by Ralph Lauren、RRL、RLX、Ralph Lauren Childrenswear 、Denim & Supply Ralph Lauren、 American Living、Chaps及Club Monaco都是現今環球最為人熟悉的消費品牌。有關公司詳情請瀏覽http://investor.ralphlauren.com。'),
('BLB032',	'A|X Armani Exchange',	'時尚精品',	NULL,	'LB',	'07-6568366',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'A|X Armani Exchange創立於1991年，以改變大都會年青一代的服裝世界作為清晰的創立宗旨，重視各地獨有的元素，融合每季配搭多變的潮流服飾與 Armani的個人風格，領導都會潮流。'),
('BLB033',	'TOMMY HILFIGER',	'時尚精品',	NULL,	'LB',	'07-6568435',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Tommy Hilfiger受歡迎的紅藍白標誌象徵著衝勁、自信與活力，亦是美國精神的象徵。設計上融合美式的創意和多元化，由傳統至時尚的服飾一應俱全，展露與眾不同的細節巧思，“Classics With a Twist” 這股「古典中帶驚嘆」的理念更成為品牌力量根基之所在。'),
('BLB036',	'古典玫瑰園',	'美食饗宴',	NULL,	'LB',	'07-958-4118',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'古典玫瑰園創立於1990年，創辦人黃騰輝先生是位著名玫瑰藝術家，集團經營品牌包括「古典玫瑰園英國茶」門市、「古典玫瑰園文創園區」、「先喝道」國民茶飲門市。目前為台灣最大的英國茶經營體系及具代表性的文創公司之一。古典玫瑰園義大店為集團第一家設於OUTLET的門市並以最優質的品質及OUTLET價格提供英國茶，英國皇家瓷器及台灣茶。現場備有數十款好茶與咖啡提供免費試喝服務，喝最好的茶就在古典玫瑰園。'),
('BLB037',	'SHIATZY CHEN',	'時尚精品',	NULL,	'LB',	'07-656-9229',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'創始於1978年臺北的夏姿˙陳 SHIATZY CHEN，設計總監暨品牌靈魂人物—王陳彩霞（Ms. Shiatzy Chen），對於服裝工藝一絲不苟的態度，從布料的觸感到色澤圖案的呈現，皆追求細節極致到位。2008年10月，夏姿˙陳 首度於巴黎時裝周發佈2009年春夏系列，透過獨特的東方氣質與西方輪廓驚豔國際時裝界與媒體，2009年品牌正式成為大中華區唯一法國高級時裝公會員。爾後，努力不懈的陸續在巴黎、香港、澳門、中國、馬來西亞、日本等地拓點，戰戰兢兢將觸角伸及國際舞臺，是品牌長期營運的重點。'),
('CF1005',	'adidas',	'運動休閒',	'20000under',	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'從德國鄉間一個平凡的製鞋匠開始，發展出最經典最完美，讓全世界各種不同運動項目的選手都愛用的各項運動產品。adidas創辦人Adi Dassler先生基於他對運動的熱愛及對創新的堅持，創造出全世界最偉大的品牌。看起來不可思議，但並不是不可能。因為，沒有不可能。'),
('CF1007',	'MIZUNO',	'運動休閒',	'20000under',	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'美津濃在國內外受到相當高的評價，各種項目的體育用品、運動服裝都有製造販賣，而其中棒球更是有相當多職業的贊助選手，具有壓倒性的市場占有率。美津濃產品開發堅持以廣泛的科學研究為基礎，確保運動是更加舒適安全，同時堅信科技與人類感性結合起來，才能創造完美的品質。在擴大產品範圍的同時，不斷採用新的技術，開發新的產品，加強產品的功能性，以滿足當今市場的需要。精益求精的品質控制是美津濃（Mizuno）產品的立足之本。'),
('CF1008',	'SPERRY.Keds',	'運動休閒',	'15000under',	'F1',	'07-656-9098',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'美國休閒時尚帆船鞋Sperry創始於1935年，源自於創始者Paul Sperry對水上運動的熱愛，於是全世界第一雙專利防滑帆船鞋就此誕生。Sperry透過品牌與產品傳達出對海洋的熱情，希望能引領消 費者們去探索永無止盡的旅程，勇敢面對各種不同的挑戰，並重新發現最真實的自我與更加有意義的人生。1916年由9家小型橡膠公司合併的美國橡膠公司將旗下30個橡膠品牌整合，全球第一雙橡膠底帆布鞋問世，Keds品牌誕生，是首個專為運動和生活而創的鞋類品牌。簡潔而別致的設計風格，從時尚偶像到鄰家女孩，無處不在地攫住女性的心，熱情地鼓舞新世代女性保有自我風格、樂觀態度、勇敢SHOW自己。'),
('CF1009',	'CROCS',	'運動休閒',	'15000under',	'F1',	'07-6569699',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'來自美國的休閒鞋品牌。 產品採用獨有Croslite™材質，具有柔軟、不留痕、人體工學和防臭的特點。 其大膽新奇顏色和獨特的設計，深受好萊塢名人的喜愛! Crocs™卡駱馳產品在全球129個國家發售，是追求時尚生活的您所絕對不能錯過的最佳選擇！'),
('CF1010',	'SKECHERS',	'運動休閒',	'15000under',	'F1',	'07-6568203',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'SKECHERS為美國第二大的運動鞋品牌，1992年成立於南加州，連續多次獲得美國鞋類專業雜誌(Footwear Plus)票選為年度最佳品牌公司(Company of the Year)，並深獲美國好萊塢名人的喜愛，歷年有小甜甜布蘭妮(Britney Spears)、克莉絲汀娜(Christina Aguilera)以及NBA運動明星卡爾馬龍(Karl Malone)、NFL足球明星Joe Montana等巨星代言，全美排名第一的馬拉松選手Meb Keflezighi梅伯.柯菲斯基代言GOrun系列，在2012倫敦奧運馬拉松比賽中的到第四名成績，台灣區歷年由甜蜜教主王心凌代言，2011年秋冬起由新生代人氣女星陳意涵代言。而2014秋冬SKECHERS將會以雙代言人-劉以豪,簡嫚書提供給大家全新的品牌風貌, 將年輕與活力帶給每一位喜歡SKECHERS的朋友'),
('CF1013',	'TOMS',	'運動休閒',	'15000under',	'F1',	'07-656-9124',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'「TOM」為Tomorrow的縮寫，所以TOMS即為Tomorrow’s shoes之意。TOMS為第一個提倡「One for One」行動的美國公益休閒鞋品牌，並承諾每售出一雙即捐贈一雙給世界各地需要鞋穿的弱勢兒童，藉此幫助更多孩童擁有更美好的明天。'),
('CF1014',	'PALLADIUM',	'運動休閒',	NULL,	'F1',	'0979-096-731',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Palladium 成立於 1920 年，原本是一間以製造飛機輪胎聞名於世的公司，對於橡膠材質的使用知識非常豐富。二次大戰後，將製胎業的專業技術應用於靴子的製造。1947年在法國Pont De Cheruy設立製鞋工廠，並與法國政府合作，推出第一雙由帆布及橡膠製成的Pampa Boots，提供給當時法國傭兵使用。在條件惡劣的北非阿爾及利亞沙漠，以及地形崎嶇的摩洛哥Atlas山脈測試之下，Palladium的作品展現出令人驚豔的透氣性及舒適度，再加上材質堅固、耐磨的特性，深獲需要長時間在炎熱且惡劣環境下工作的軍人們喜愛。'),
('CF1015',	'Reebok',	'運動休閒',	NULL,	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1895年Reebok在英國創立，是最老的運動球鞋品牌之一。創立者J.W. Foster本身為短跑選手，為了讓自己跑得更快，於是投入鞋子研發，最後在1895年開發出一款裝釘子的跑鞋，並創立 Foster Deluxe Spike，是世界首個跑鞋品牌，讓Reebok在運動品牌中享有盛名。'),
('CF1016',	'PUMA',	'運動休閒',	NULL,	'F1',	'07-656-9521',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'PUMA是全球首屈一指的運動領導品牌，設計開發並銷售製造各種鞋類、服裝以及配件產品。擁有65年以上歷史，PUMA為運動史上偉大運動員們設計出無數創新功能性裝備。PUMA的專業運動與運動時尚產品系列涉及足球、跑步、訓練和健身、高爾夫、及賽車領域，同時也與世界知名設計品牌共同合作開發商品，創作出更多新穎的運動時尚產品。'),
('CF1018',	'New balance',	'運動休閒',	NULL,	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'New Balance相信製鞋是不簡單的事，要穩居世界高科技運動用品第一品牌，必須要持續知道如何製鞋。New Balance以高度的責任感打造一個運動員樂於穿著，員工樂於創造，社會樂於支持的國際品牌。 '),
('CF1019',	'converse',	'運動休閒',	NULL,	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'百年美國經典品牌Converse，已成為美國及全球年輕人展現自我、獨立精神的象徵符號。品牌精神強調的是反骨與原創，結合音樂、藝術、運動、時尚、文化，塑造出獨特個人的風格，且成為一種主流文化。'),
('CF1020',	'PLAY BOY包',	'運動休閒',	NULL,	'F1',	'07-656-9747',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Playboy的兔子商標是由該雜誌社的第一位藝術總監Art Paul所設計。Playboy雜誌社創辦人Hugh Hefner曾解釋，「我選兔子做雜誌象徵，因為它有幽默的性感意味，提供一種愉悅活潑的形象。我把它穿上燕尾服使它看來溫文儒雅。還有另外的編輯含義。因為紐約客及紳士雜誌都用男人做象徵，我覺得兔子較獨特；並且一隻兔子穿上正式的晚宴裝扮讓我感到迷人、有趣且恰當。」'),
('CF1023',	'K-SWISS',	'運動休閒',	NULL,	'F1',	'0958-786-933',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'來自美國加州的運動品牌K-Swiss，自1966年於全球推出第一雙「全皮質」經典白色網球鞋－The Classic，並在溫布敦網球賽首次亮相以來，其簡約五線條設計理念席捲球場內外，並成為當時網球鞋設計的改革者。'),
('CF1024',	'Crocodile Shoes',	'運動休閒',	NULL,	'F1',	'07-6569169',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'簡約的都會休閒風格趨向，強調沒有多餘的設計，在全世界享有極高的品牌知名度。近年來Crocodile在「品牌年輕化、商品多樣化」的發展策略下，融入明色調、鮮豔色彩以及對比層次感的型式設計，加上時下的流行元素，以及科技功能性專利的運用，呈現Crocodile品牌全新風貌。'),
('CF1025',	'摩卡森',	'運動休閒',	NULL,	'F1',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'簡潔、經典設計永不落伍。軟皮鞋繼續代表著美國人休閒、舒適的生活方式。從紐約的街頭到克羅拉多的山區，從田納西州納什維爾的奧普瑞到加利弗尼亞州聖摩尼卡的海港，從英國倫敦到日本東京，無論在何處，都體現「MOCCASIN」——源于自然和自由的精神。'),
('CF1026',	'SBPRC.POLO',	'運動休閒',	NULL,	'F1',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('CF1027',	'人氣熊',	'運動休閒',	NULL,	'F1',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'麗托貝爾是以英文Little Bear(小熊)命名，B52是我們2008年成立的自創品牌，熊的名字為人氣熊，我們強調的是材質跟獨特性，材質是採用台灣中興紡織100%純棉布料，日本進口膠印做成的立體感覺，強調洗了不會黏的特質，風格部分走向的是親子都可以穿的路線，有別於一般的潮T，更以平價路線，希望在台灣可以打出平價也有優質感的市場。'),
('CF1028',	'PLAY BOY SHOES',	'運動休閒',	NULL,	'F1',	'07-6569230',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'PLAYBOY商品設計都承襲「引領時尚」、「耀眼巨星般的性感自信」及「玩樂主義」等品牌形象，也因此PLAYBOY每季的款式總是走在流行尖端且具設計感十足。PLAYBOY秉持著品牌在全球形象的一致性、設計反映世界各主要城市的流行文化趨勢並能吸引追求時尚的消費者。'),
('CF1030',	'北極熊滑冰世界',	'運動休閒',	NULL,	'F1',	'07-656-9528',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'新時尚娛樂休閒活動享受北極雪橇的樂趣，您可以一邊滑冰一邊沈浸在超炫的燈光裡，擁有飄雪泡泡、浪漫氣氛的真冰滑冰場！帶領適齡青年朋友引領新風的愛情方舟。愛她就要讓她與眾不同！'),
('CF1032',	'STARBUCKS(星巴克)',	'美食饗宴',	NULL,	'F1',	'07-656-8390',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'堅持選用全球最好的咖啡豆，調製成每杯高品質的咖啡飲品，提供消費者最佳的咖啡產品與最舒適的環境，打造顧客在辦公室與居家之外的第三個好去處。現在，我們量身訂做專屬於您的客製化咖啡，無論是低咖啡因、低脂牛奶、豆奶或是再添加一份濃縮咖啡與風味糖漿，您手中的咖啡就能決定您獨特的享受。'),
('CF1033',	'MLB',	'運動休閒',	NULL,	'F1',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('CF1040',	'達克魷魚',	'美食饗宴',	NULL,	'F1',	'07-6569309',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('CF1041',	'Lacoste',	'運動休閒',	NULL,	'F1',	'07-963-5945',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'他的代理商及銷售網遍佈全世界，他永遠不停止創造，他是人生最幸福快樂的時候穿著的服飾，這個故事到目前為止仍舊繼續增加中，他是從一位綽號叫「鱷魚先生」的人開始說起。'),
('CF1042',	'FILA',	'運動休閒',	NULL,	'F1',	'07-6569051',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'創始於1911年，FILA沉浸百年義大利織品工藝，堅持原創設計強調質感與材質的融合運用，呈現優雅獨具的運動休閒風格，廣受世界頂尖選手及義式時尚風格愛好者所推崇追求。'),
('CF1043',	'Bobson',	'運動休閒',	NULL,	'F1',	'07-6569262',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'BOBSON除了在設計上持續引進日本流行的時尚元素外，更貼心考量台灣消費者的需求，在剪裁上，著重於機能與塑型的效果，尤其是2004年帶領起“小尻革命”的風潮，在剪裁上加入了提臀的設計後，完美的臀部曲線已成為牛仔褲的新原則，在BOBSON所建立的牛仔王國裡，每個女生都能擁有自信而驕傲的背影！'),
('CF1050',	'DC SHOES',	'運動休閒',	NULL,	'F1',	'07-656-9512',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1994年，來自美國的Ken Block和Damon Way嘗試突破往例，他們帶著「滑板鞋應該由滑板人著手參與」的全新想法進而創立DC Shoes。經過不斷創新與自我超越，DC藉由最新科技和設計徹底為滑板鞋款、服飾帶來革命，持續提供大眾多元化商品，DC儼然成為世界最頂尖的運動休閒品牌！'),
('CF1051',	'奇幻島',	'娛樂生活',	NULL,	'F1',	'07-656-9207',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'懸吊在空中的新樂園'),
('CF1052',	'EDWIN',	'運動休閒',	NULL,	'F1',	'07-656-8219',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'堅持古著手感與工藝技術創新領導潮流的製造歷程EDWIN牛仔褲的剪裁應用精密電腦計算，從主體褲型、錶袋、後口袋等部位構成。車縫的最後階段是將被稱做牛仔褲的\"ID\"「皮牌」縫製上去。最重要的水洗加工部分，決定這件牛仔褲靈魂最主要的關鍵，是職人展現專業手腕主要舞台。藉由專業秘方或手磨等創造出貓鬚或磨白的質感加工，或刻意破壞、磨破等二手痕跡，全程由專業職人親手設計監製。水洗加工運用輕石、人工石、橡膠球等各種素材交互使用，創造獨特的風格。'),
('CF1053',	'Lee',	'運動休閒',	NULL,	'F1',	'07-656-8045',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'H.D. Lee Mercantile公司於1889年在美國堪薩斯創立了Lee品牌。1926年Lee發明了世界上第一條帶拉鍊牛仔褲101Z系列，與之後推出著名的 ’Hair-On-Hide’ 馬毛皮版和S形後袋車縫線設計（Lazy S）一同成為Lee的經典標誌。從推出第一款具有保護性的Lee Bib連身工裝褲，到13安士重磅丹寧布製作的經典101系列，Lee始終銳意創新，在牛仔服裝從實用走向時尚的過程中，扮演了至關重要的角色。Lee一直保存傳統，同時不斷創新，在牛仔時尚界穩佔領導地位，與時尚的年青一代連成一線，被譽為牛仔文化的經典。'),
('CF1057',	'挖沙咪歡樂親子館',	'歡樂兒童',	NULL,	'F1',	'0968-123-688',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'透過不同遊戲區域的遊具玩樂，增進小朋友特殊好奇心來啓發兒童大腦，在玩樂中創造新子歡樂互動的美好時光，更提供孩子在手腦協調、感覺統合刺激、培養專注力、建立自信心、增加社交互動學習與激發冒險創新的精神。希望能為家長與孩子打造一個遊戲中也能學習的兒童歡樂世界。'),
('CLB004',	'Fossil',	'流行品牌',	NULL,	'LB',	'07-6569043',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Fossil是一個全球性的設計.行銷及經銷的公司，尤其以流行飾品配件著稱。Fossil最主要產品線為男女流行腕錶及飾品配件，包括了自有品牌與授權品牌的皮包、皮帶、墨鏡、小皮件、及流行服飾。Fossil擁有廣泛多元的配件產品、品牌、銷售管道和價格，所以能夠成功的吸引時下不同的流行族群。'),
('CLB011',	'AIGLE',	'時尚精品',	NULL,	'LB',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1853年，Hiram Hutchinson 先生正式在法國創立了 AIGLE 品牌，歷經了150 年， AIGLE 也從早期全歐洲最著名的貴族高級手工膠鞋及馬靴商品，進一步發展到全方位戶外休閒、旅遊服飾的代表性品牌；歷經一個半世紀的洗鍊，AIGLE 代表的意義不僅是其法文字面上老鷹的意思；更是領導巴黎乃至於全球戶外、旅遊類商品頂級質感的休閒品味，帶動精緻質感與時尚脈動的法式戶外風格最佳品牌。'),
('CLB012',	'Strellson',	'時尚精品',	NULL,	'LB',	'07-656-9372',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'來自瑞士的Strellson已被證實是最近幾年發展起來的最成功的時尚品牌之一，是一個專為都市新貴設計的富於創新精神的品牌。Strellson代表著國際性、自信和獨立。強調在生活的方方面面都應該注重個性化的穿著。它為人們提供了一個購買摩登和高品質產品的理由。以獨有的方式在眾多的潮流趨勢中發展了無限可能性，這些可能性被應用在穿梭於全球各地的忙碌的人士身上。高品質不僅僅是好的想法或者好的設備。Strellson的設計團隊尤其注重產品的材料和出色的工藝，甚至連最短的一道縫線也不容忽視。布料主要從義大利採購，其品質在全球有口皆碑。然而，材料並不是讓Strellson的品質如此出眾且獨一無二的唯一因素。事實上，人們穿著Strellson的時裝覺得好看又舒服的原因，應該要歸功於合身剪裁、款式、和出色的工藝。'),
('CLB013',	'FURLA',	'流行品牌',	NULL,	'LB',	'07-656-9076',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1927年，FURLA家族在意大利博洛尼亞這個充滿文化氣息與精緻魅力的城市誕生。創始人Aldo和Margherita Furlanetto信心十足創辦皮具公司，為日後聞名世界的FURLA皮具品牌奠下基礎。 FURLA的出現正值第一次世界大戰之後，並主要為女性消費者提供各式各樣的皮革飾品和佩飾，以滿足她們在戰後對於這類商品日益高漲的需求。從最初的商業化，到其後的工業化歷程，FURLA產品的多變講述了不同時代的生活方式和社會節奏的變遷。'),
('CLB014',	'SIMPLE LIFE',	'運動休閒',	NULL,	'LB',	'07-656-9661',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'SIMPLE LIFE1975年於日本創立至今已40年歷史，以男女上班族休閒服飾、城市輕旅行為設計核心，以當代流行設計、素材及款式，表現品牌著名之丹寧系列之Life Style風格。“Be Simple Life!! 讓我們追求只擁有必需品，崇尚去繁為簡的簡單生活吧!”'),
('CLB017',	'TOUGH JEANS',	'運動休閒',	NULL,	'LB',	'07-6569283',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'bauhaus旗下的主力男女裝品牌TOUGH Jeansmith，一直以來都以豐富的創意設計建立起獨特的品牌形象，其中尤以牛仔褲最能表達出品牌的原創性，加上饒富東方意念的時裝系列，更加强了品牌多元化的設計風格，牛仔褲方面運用極富TOUGH Jeansmith經典風格的設計細節及特殊技術處理，搭配潮流主線的褲型剪裁，成為最具代表性的商品。'),
('CLB018',	'Superdry',	'運動休閒',	NULL,	'LB',	'07-656-9693',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'來自英國的Superdry，品牌的設計靈感來自一趟東京旅行，以代表性的精緻材質和細節，輔以繽紛亮眼的印花顏色和多樣選擇，混合美式經典美國風格復古刷舊與日本印刷織物圖案，一直深獲消費者的喜愛。材質選用上，亦堅持使用手感極佳的棉料材質，技術優良的水洗加工及後製處理，精細的縫製過程，讓每件單品都維持頂級質感，繼足球金童貝克漢被拍到私下著Superdry服飾後，多位名人亦被捕捉到穿著Superdry的帽T外套等。'),
('CLB019',	'Jeep',	'時尚精品',	NULL,	'LB',	'07-656-9547',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'自1941年Jeep品牌創立後，Jeep從此成為『自由』與『無限潛能』的象徵。構築在與眾不同的表現與經驗，Jeep Spirit商品為擁有冒險靈魂的夢想家而創造，運用大自然的色彩、天然材質及優良而自豪的作工成就每一件商品。做為一個世界知名品牌，品質就如同傳奇一般的真實而可靠。'),
('CLB020',	'California Republic',	'時尚精品',	NULL,	'LB',	'07-656-9693',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'California Republic (CR) 由美國JBL服裝公司創立於富有濃烈文化底蘊的美國加州。品牌概念便是以加州的多元文化為啟發，並試圖在服裝設計中傳達這種多彩鮮明的元素。引進台灣後仍依「自然、環保、舒適」為理念，以純棉的觸感、講究的剪裁，原創的設計提供給台灣的美休愛好者，重現充滿加州風情的品牌精神。'),
('CLB021',	'Sanuk',	'時尚精品',	NULL,	'LB',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'綠色微笑是SANUK的正字標記。SANUK已連續六年蟬聯世界鞋類設計大獎。是可以捲起來的美國手工休閒鞋，Sanuk 字義是愉快美好的意思!，和笑臉 Logo 一樣穿上它每個人都愉快的品牌訴求，現已是美國國民品牌，好萊塢布萊德彼特等明星的最愛，更是攀岩衝浪運動者的喜愛品牌。Sanuk 鞋底以 PHYLON 材質製作，重量不到 100 公克，每雙鞋具有隱形透氣孔，乾爽舒適，保養清洗容易，可摺可疊，方便攜帶，不佔空間，加上符合腳部人體工學的設計，讓腳完全受到保護，因此穿上 Sanuk shoes 手工鞋，就像是沒有穿鞋一樣自在舒適!'),
('CLB024',	'集雅社影音家電',	'娛樂生活',	NULL,	'LB',	'07-963-0278',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1994年，創辦人秉持著滿足顧客對消費電子商品的需求，進而提供完整專業的服務，率先成立音響銷售門市，並擴展至各大百貨公司設立專櫃，以「播下愛音樂的種子」為初衷，融合科技家電，創造讓消費者更舒適的美學生活，再以「集賢納雅為社稷」的精神，成立「集雅社」。目前，擁有全台灣各大百貨專櫃及門市，且陸續增加中，為百貨影音家電銷售領導品牌，同時，積極整合虛實通路並擴展至商用工程與貿易批發的專業領域，成為提供消費電子商品全方位銷售的綜合營運平台。'),
('CLB025',	'BILLY KIDS',	'運動休閒',	NULL,	'LB',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Billy Kids是流行於歐洲名牌青少年服飾。設計師取美國拓荒時期縱橫於西部的傳奇人物 Billy 為名，強調其不拘泥於世俗的性格，於英國成立 Billy Kids 服飾公司，並以 Billy 為品牌的服飾，創造其前衛與流行。Billy Kids 服飾的風格在線條上強調簡潔、有個性，在色彩上強調活潑與自然。商品的組合性強，讓有個性的年輕人容易穿出自我風格，跟上流行、也創造流行，在英國青少年族群帶動了一股流行的旋風。 '),
('CLB026',	'JOHN DUKE',	'運動休閒',	NULL,	'LB',	'07-6569163',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('CLB029',	'SISLEY',	'流行品牌',	NULL,	'LB',	'07-656-8332',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'設計優雅而性感的女性時裝，反映現代女 性獨立卻不失個人魅力的特質，走在時裝 界的尖端，深受市場的歡迎；高雅時尚的 男裝集合了傳統經典和成熟穩重的風格， 再增添現今時尚潮流的元素，慎密精練的 制作態度照顧到Sisley服裝的每一個細節 ，力求為男士提供最高素質的時尚服飾。Sisley 原創於1968年的巴黎，以牛仔丹寧起家，並以前衛年輕的風格竄起。1974年加入義大利著名的時裝集團 Benetton，形象更加性感時尚，展現出獨特、魅惑的設計風格。'),
('CLB030',	'UNITED COLORS OF BENETTON',	'流行品牌',	NULL,	'LB',	'07-656-8332',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'1965年於義大利創立的著名服飾品牌United Colors of Benetton以極具代表性的綠底白字的長方形商標 ，向世人傳達了其倡導簡潔、崇尚自然的鲜明個性。豐富多彩的條紋和圖案，隨意幽默的設計，精緻的剪裁和舒適的款式，全面涵蓋男女裝及童裝系列，令Benetton擁有了來自世界各地不侷限於年齡層次的擁護者。'),
('CLB032',	'NAUTICA',	'時尚精品',	NULL,	'LB',	'07-6569173',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	NULL),
('CLB033',	'Bussola',	'時尚精品',	NULL,	'LB',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Bussola，源自義大利文「羅盤」的意思，創立於1978年，以傳統手工製鞋技術，縫製耐穿、舒適的靴子著名。設計總監Jose Marzo，以旅遊美學作為設計核心，與大眾分享Bussola經典工藝結合最新科技材料，注重質量與每一個環節，創造出時尚又好穿的足下風情。'),
('CLB036',	'高島',	'娛樂生活',	NULL,	'LB',	'07-656-8220',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'高島自1977年從事製造按摩椅以來，在專業的領域中及不斷地追求創新與突破，並以「誠信」、「負責」、「健康」、「人性」及「科技」作為經營的五大理念。本著這五大信念，高島對產品的研發及品質的要求，採嚴謹的態度及專業的技術，榮幸地獲得了各界的肯定，得以不斷擴展海外市場，使高島遍及世界各地，並秉持共容共存的信念，為人類創造健康、幸福的生活。近年來，我們更創設「高島健康生活館」希望能為大家帶來健康的生活品質，達到「要健康、找高島」的終極目標。'),
('CLB040',	'OGAWA',	'運動休閒',	NULL,	'LB',	'07-656-9663',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'全球按摩椅銷量第一品牌OGAWA，1996年在馬來西亞創立，目前在全球已經擁有600多家門市專櫃，OGAWA一直秉承\"融入生活，享受健康\"的品牌理念，讓消費者能夠享受健康、愉悅生活。'),
('CLB041',	'borsalini',	'時尚精品',	NULL,	'LB',	'07-6569288',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Borsalini針對現代女性需求而設計，以「時尚實用」為前提，不以譁眾取寵的誇張手法、或過於大膽前衛的設計取悅大眾。其中最為人所稱道之特色在於將現代生活觀點融入皮件設計中，強調包款簡潔實用，同時掌握流行質感，跳脫制式皮包的保守枷鎖，給予使用者充滿自由搭配服裝的空間，能因應不同場合的需求，詮釋各種角色扮演，展現獨有的個人品味。'),
('CLB043',	'QUIKSILVER & ROXY',	'運動休閒',	NULL,	'LB',	NULL,	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'Quiksilver不僅是一個流行服飾品牌，一路走來跟著戶外運動生活型態一同成長。就如同Quiksilver，Roxy也是由水而生的品牌。她於1990年亮相，以泳衣為主，她的產品配上道地衝浪品牌的加持，成功地激起了女孩們的興趣。現在，Quiksilver是一個完全的世界著名品牌，提供了年輕活潑的族群日常生活中各方面的產品，並且由衝浪率性不拘的中心思想裡成功創造了自在生活的品牌形象！'),
('CLB044',	'SIXTY',	'運動休閒',	NULL,	'LB',	'07-656-8279',	'週一至週五11:00~22:00 週六、日、例假日10:00~22:00',	'品牌誕生於1991年。自義大利起家，以牛仔褲聞名時裝界的流行品牌-Miss Sixty，不僅是眾多女星們所熱愛的服飾品牌，追求自我風格強烈的品牌精神，更是許多年輕女性的性感狂野重要指標。除了牛仔服飾以外，晚宴服裝、街頭T桖、鞋子、包包等眾多單品配件亦是本品牌每季對時裝潮流的所著重推出的熱門款式，不斷出奇推新並於時尚界指標位置始終屹立不搖。');

-- 2019-09-14 15:28:57
