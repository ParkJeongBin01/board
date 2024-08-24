create database shop_db;
create user 'shop'@'%' identified by '1234';
grant all privileges on shop_db.* to 'shop'@'%';

drop table if exists shop_tbl;
create table shop_tbl
(
no          INTEGER AUTO_INCREMENT PRIMARY KEY,
categorie   varchar(20),
sex         VARCHAR(2) default '남자',
cloth_title VARCHAR(200) NOT NULL,
star        FLOAT CHECK (star >= 0 AND star <= 5),
discount    INTEGER NOT NULL DEFAULT 0 CHECK(discount >= 0 AND discount <= 100),
price       INTEGER NOT NULL CHECK(price >= 0),
image       VARCHAR(500),
description TEXT,
reg_date    DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO shop_tbl(categorie, sex, cloth_title, star, discount, price, image, description)
VALUES
('상의','남자','트리플로고 하프집업','4.8','28','64000','https://image.msscdn.net/thumbnails/images/goods_img/20230913/3555068/3555068_16945691085135_big.jpg?w=1200','기모원단으로 제작되어 여름을 제외하고 오래 입기 좋습니다.'),
    ('상의','남자','피그먼트 오버핏 스웻','4.8','40','38400','https://image.msscdn.net/thumbnails/images/goods_img/20230824/3493537/3493537_16940480719080_big.jpg?w=1200','빈티지한 무드의 피그먼트 원단 사용.'),
    ('세트','여자','컬러 블록 스웻셔츠&버드 스커트 세트','5','0','152000','https://image.msscdn.net/thumbnails/images/goods_img/20240312/3942856/3942856_17102232697583_big.png?w=1200','클래식하면서도 트랜디한 느낌을 주었습니다.'),
    ('상의','여자','스피드레이서 레글런 스웨트셔츠_블랙','4.9','30','57400','https://image.msscdn.net/thumbnails/images/goods_img/20230710/3400338/3400338_16965506574390_big.jpg?w=1200','정비소 테마 컨셉 특유의 디테일들을 캐주얼하게 재구성하였습니다.'),
    ('상의','전체','시그니처 오버핏 맨투맨','4.7','30','35700','https://image.msscdn.net/thumbnails/images/goods_img/20230818/3475395/3475395_16938118686037_big.jpg?w=1200','자연스러운 오버핏 연출이 가능합니다.'),
    ('상의','전체','트랙 아트웍 맨투맨 티셔츠_멜란지','4.8','19','39900','https://image.msscdn.net/thumbnails/images/goods_img/20240109/3783068/3783068_17171331592376_big.png?w=1200','사계절에 적합한 두께로 즐길 수 있는 맨투맨 티셔츠.'),
    ('하의','남자','데일리 와이드 진','4.7','56','29900','https://image.msscdn.net/thumbnails/images/goods_img/20211004/2160885/2160885_1_big.jpg?w=1200','고밀도 면 100% 원단으로 제작된 데일리 와이드 진입니다.'),
    ('하의','남자','바이오워싱 카펜터 버뮤다 데님 팬츠_라이트블루','4.8','46','29900','https://image.msscdn.net/thumbnails/images/goods_img/20230412/3228764/3228764_17164417946556_big.jpg?w=1200','와이드한 실루엣과 흐물거림 없는 안정감 있는 핏감.'),
    ('하의','여자','BACK EMBROIDERY WIDE CAMO PANTS','5','10','106200','https://image.msscdn.net/thumbnails/images/goods_img/20230521/3313159/3313159_16854225220004_big.jpg?w=1200','밀리터리룩 기반으로 트렌드하게 재구성하였습니다.'),
    ('양말','전체','507 모노 트라우져 하프 삭스','4.9','24','12900','https://image.msscdn.net/thumbnails/images/goods_img/20190328/998051/998051_17192106437781_big.jpg?w=1200','200침수로 제작되어 가벼운 무게감과 탄탄한 착용감을 선사합니다.'),
    ('양말','전체','라이트웨이트 미들 삭스 7팩','4.9','0','19900','https://image.msscdn.net/thumbnails/images/goods_img/20190712/1094750/1094750_17138345930057_big.jpg?w=1200','얇은 두께와 가벼운 중량으로 제작하였습니다.')

select * from shop_tbl;