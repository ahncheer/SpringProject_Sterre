
/* Drop Tables */

DROP TABLE users CASCADE CONSTRAINTS;
DROP TABLE authorities CASCADE CONSTRAINTS;
DROP SEQUENCE users_SEQ;




/* Create Tables */

CREATE TABLE users
(
	username varchar2(50) NOT NULL PRIMARY KEY,
	useremail varchar2(50) NOT NULL,
	password varchar2(100) NOT NULL,
	useruid NUMBER NOT NULL, --uid 추가 ;
	usertel varchar2(100) NOT NULL,
	userregdate date DEFAULT SYSDATE,
	useralarm number,
	userAdd varchar2(100),
	enabled char(1) DEFAULT '1'
);

-- 시퀀스
CREATE SEQUENCE users_SEQ;

CREATE TABLE authorities(
	username varchar2(50) REFERENCES users(username),
	authority varchar2(50) NOT NULL,
	PRIMARY KEY (username, authority)
);



-- 확인
SELECT u.username, u.password, u.useruid, u.enabled, a.authority
FROM users u, authorities a
WHERE u.username = a.username;

-- useruid, useremail, userpw, username, usertel, userregdate, useralarm, userAdd, srenabled

--admin, sterre -> 관리자 계정 생성
INSERT INTO users (username, password, useremail, usertel, useruid) 
				VALUES ('admin', 'sterre', 'sterre@star.com', '02-1111-1111', users_SEQ.nextval);
INSERT INTO authorities VALUES ('admin', 'ROLE_ADMIN');

-- asw, asw -> 멤버 계정 생성
INSERT INTO users (username, password, useremail, usertel, useruid) 
				VALUES ('asw', 'asw', 'amu30141592@gamil.com', '010-2107-3301', users_SEQ.nextval);
INSERT INTO authorities VALUES ('asw', 'ROLE_MEMBER');

-- 확인
SELECT * FROM users ;
SELECT * FROM authorities ;










