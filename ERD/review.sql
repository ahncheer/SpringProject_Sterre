
/* Drop Tables */
DROP TABLE sr_review CASCADE CONSTRAINTS;
DROP SEQUENCE sr_review_SEQ;



/* Create Tables */
CREATE TABLE sr_review
(
	reviewuid NUMBER PRIMARY KEY,
	username varchar2(50) NOT NULL,
	goodsname varchar2(100) NOT NULL,
	reviewcontent clob NOT NULL,
	reviewdate DATE DEFAULT SYSDATE
);


-- 시퀀스
CREATE SEQUENCE sr_review_SEQ;
SELECT * FROM sr_review;


-- 기본데이터 작성
INSERT INTO sr_review
	values(sr_review_SEQ.nextval,'asw', '버즈케이스', '배송이 빠르네요 감사합니다', sysdate);
	
INSERT INTO sr_review
	values(sr_review_SEQ.nextval,'asw', '버즈케이스-글귀', '배송이 빠르네요 감사합니다', sysdate);
	

	
	
	
	
	
	
	
	
	
	
	
	