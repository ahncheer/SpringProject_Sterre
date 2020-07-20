
/* Drop Tables */
DROP TABLE sr_goods CASCADE CONSTRAINTS;

/* Create Tables */
CREATE TABLE sr_goods
(
	goodsuid number NOT NULL,
	goodsname varchar2(30) NOT NULL,
	goodsprice number NOT NULL,
	goodsContent varchar2(100) NOT NULL,
	goodsregdate date,
	goodsTotal number NOT NULL,
	goodsLeft number NOT NULL,
	goodspic1 varchar2(100) NOT NULL,
	goodspic2 varchar2(100),
	PRIMARY KEY (goodsuid)
);

-- 시퀀스
CREATE SEQUENCE sr_goods_SEQ;

SELECT * FROM sr_goods;

-- 기본데이터 작성
INSERT INTO sr_goods 
VALUES (sr_goods_SEQ.nextval, '버즈케이스', 10000, '버즈를 안전하게 들고 다닐 수 있어요', SYSDATE, 
		30, 30, 'https://image.idus.com/image/files/8e044a36322d410c9cdf99d046ea42c2_720.jpg',
		'https://image.idus.com/image/files/043af3d765824585b0e28b80e69e15bd_720.jpg');
