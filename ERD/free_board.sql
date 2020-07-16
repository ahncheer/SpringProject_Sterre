
/* Drop Tables */

DROP TABLE test_write CASCADE CONSTRAINTS;


/* Create Tables */

CREATE TABLE test_write
(
	wr_uid number NOT NULL,
	wr_subject varchar2(200) NOT NULL,
	wr_content clob,
	wr_name varchar2(40) NOT NULL,
	wr_viewcnt number DEFAULT 0,
	wr_regdate date DEFAULT SYSDATE,
	PRIMARY KEY (wr_uid)
);

-- 시퀀스
CREATE SEQUENCE TEST_WRITE_SEQ;

SELECT * FROM test_write;

-- 기본데이터 작성
INSERT INTO TEST_WRITE VALUES
(TEST_WRITE_SEQ.nextval, '안녕하세요', '안녕하세요', '관리자1', 0, '2017-03-02');
INSERT INTO TEST_WRITE VALUES
(TEST_WRITE_SEQ.nextval, 'free_board입니다','free_board입니다', '관리자2', 0, '2017-03-02');
INSERT INTO TEST_WRITE VALUES
(TEST_WRITE_SEQ.nextval, '자유게시판 용도로 사용합니다', '자유게시판 용도로 사용합니다', '관리자3' , 0, '2017-08-12');
INSERT INTO TEST_WRITE VALUES
(TEST_WRITE_SEQ.nextval, '작은 커뮤니티로 봐주세요', '작은 커뮤니티로 봐주세요', '관리자4', 0, '2018-02-09');
INSERT INTO TEST_WRITE VALUES
(TEST_WRITE_SEQ.nextval, '사용하는 사람이 있을까요?', '사용하는 사람이 있을까요?', '관리자5', 0, sysdate);


-- 다량의 데이터 필요
SELECT * FROM test_write ORDER BY wr_uid DESC;
INSERT INTO test_write(wr_uid, wr_subject, wr_content, wr_name)
	SELECT test_write_seq.nextval, wr_subject, wr_content, wr_name FROM test_write;


--DELETE FROM test_write WHERE wr_uid > 10;













