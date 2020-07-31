
/* Drop Tables */
DROP TABLE sr_goods CASCADE CONSTRAINTS;
DROP SEQUENCE sr_goods_SEQ;


DROP TABLE sr_buys CASCADE CONSTRAINTS;
DROP SEQUENCE sr_buys_SEQ;

/* Create Tables */
CREATE TABLE sr_goods
(
	goodsuid number NOT NULL,
	goodsname varchar2(100) NOT NULL,
	goodsprice number NOT NULL,
	goodsContent varchar2(100) NOT NULL,
	goodsregdate DATE DEFAULT SYSDATE,
	goodsSort number NOT NULL, -- 상품종류(에어팟케이스/핸드폰케이스)
	goodsCustom number NOT NULL, -- 일반?글귀?그림?
	goodsTotal number NOT NULL, -- 전체 수량
	goodsLeft number NOT NULL, -- 지금까지 판매된 수량
	goodsLike number DEFAULT '10', --좋아요!
	goodspic1 varchar2(100) NOT NULL,
	goodspic2 varchar2(100),
	PRIMARY KEY (goodsuid)
);

CREATE TABLE sr_buys
(
	buyuid NUMBER PRIMARY KEY,
	username varchar2(50) NOT NULL,
	goodsname varchar2(100) NOT NULL,
	buynum NUMBER NOT NULL,
	buydate DATE DEFAULT SYSDATE
);


-- 시퀀스
CREATE SEQUENCE sr_goods_SEQ;
SELECT * FROM sr_goods;

CREATE SEQUENCE sr_buys_SEQ;
SELECT * FROM sr_buys;

-- 기본데이터 작성
INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '핸드폰케이스-일반', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		1, 1, 30, 30, 12, 
		'https://image.idus.com/image/files/823c41dc67e9406a9f693073a56ad291_1080.jpg',
		'https://image.idus.com/image/files/823c41dc67e9406a9f693073a56ad291_1080.jpg');
INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '핸드폰케이스-글귀', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		1, 2, 30, 30, 12, 
		'https://image.idus.com/image/files/b08c5b246d8a44b8b7332878a12164ba_1080.jpg',
		'https://image.idus.com/image/files/b08c5b246d8a44b8b7332878a12164ba_1080.jpg');
	INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '핸드폰케이스-주문제작', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		1, 3, 30, 30, 12, 
		'https://image.idus.com/image/files/ee070a7455ed451fbbc135b5cadfc4c5_1080.jpg',
		'https://image.idus.com/image/files/ee070a7455ed451fbbc135b5cadfc4c5_1080.jpg');

INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '버즈케이스-일반', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		2, 1, 30, 30, 12, 
		'https://image.idus.com/image/files/8e044a36322d410c9cdf99d046ea42c2_720.jpg',
		'https://image.idus.com/image/files/043af3d765824585b0e28b80e69e15bd_720.jpg');
INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '버즈케이스-글귀', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		2, 2, 30, 30, 12, 
		'https://image.idus.com/image/files/0bbbb8aadfe04eba8da75cdc8ebf6f9c_1080.jpg',
		'https://image.idus.com/image/files/0bbbb8aadfe04eba8da75cdc8ebf6f9c_1080.jpg');
	INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '버즈케이스-주문제작', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		2, 3, 30, 30, 12, 
		'https://image.idus.com/image/files/0eb5b7f21cd14f6fa2c364d16465379c_1080.png',
		'https://image.idus.com/image/files/0eb5b7f21cd14f6fa2c364d16465379c_1080.png');
	
	
	
INSERT INTO sr_buys
	values(sr_buys_SEQ.nextval,'asw', '버즈케이스', 1, sysdate);
	
	
SELECT buyuid buyuid, username  username, goodsuid  goodsuid, buynum  buynum, buydate  buydate
FROM sr_buys WHERE username = 'admin';
	
	
	
	
SELECT goodsLeft FROM SR_GOODS WHERE goodsname = '버즈케이스-주문제작';

UPDATE SR_GOODS 
 SET goodsLeft = (SELECT goodsLeft FROM SR_GOODS WHERE goodsname = '버즈케이스-주문제작')-1
 WHERE goodsname = '버즈케이스-주문제작';
	
	
SELECT *
FROM 
 (
  SELECT *
  FROM SR_GOODS
  ORDER BY goodsLeft DESC
 )
WHERE ROWNUM <= 3;


	
	