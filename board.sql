DROP TABLE board1 PURGE;
DROP TABLE bookmark PURGE;
DROP TABLE viewnotice PURGE;

CREATE TABLE board1(
	num NUMBER PRIMARY KEY NOT NULL, -- 占쏙옙 占쌉시깍옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙
	writer VARCHAR2(10) DEFAULT NULL, --占쌜쇽옙占쏙옙
	phonenum VARCHAR2(30) DEFAULT NULL,
	petname VARCHAR2(30) DEFAULT NULL,	--占쏙옙占싱몌옙
	rate NUMBER NOT NULL,	--占쏙옙占쏙옙
	title VARCHAR2(50) DEFAULT NULL, --占쏙옙占쏙옙占쏙옙
	reg_date TIMESTAMP(9), --占쌀쇽옙占쏙옙 占쏙옙占쏙옙 9占쌘몌옙占쏙옙占쏙옙
	readcount NUMBER DEFAULT 0,
	content VARCHAR2(4000) NOT NULL --占쏙옙 占쏙옙占쏙옙
);

CREATE TABLE bookmark(
	num NUMBER PRIMARY KEY NOT NULL, -- �� �Խñ��� �����ϴ� ��
	hosname VARCHAR2(200) NOT NULL,
--	reg_date TIMESTAMP(9), --�Ҽ��� ���� 9�ڸ�����
	tel VARCHAR2(200),
	addr VARCHAR2(400) NOT NULL
--	content VARCHAR2(4000) NOT NULL --�� ����
);
drop table bookmark

CREATE TABLE viewnotice(
	num NUMBER PRIMARY KEY NOT NULL, -- 占쏙옙 占쌉시깍옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙
	checkbox VARCHAR2(60),
	title VARCHAR2(50) NOT NULL,
	content VARCHAR2(4000) NOT NULL, --占쏙옙 占쏙옙占쏙옙
	noticefile VARCHAR2(60),
	readcount NUMBER DEFAULT 0,
	writer VARCHAR2(10) DEFAULT NULL, --占쌜쇽옙占쏙옙
	reg_date TIMESTAMP(9) --占쌀쇽옙占쏙옙 占쏙옙占쏙옙 9占쌘몌옙占쏙옙占쏙옙
);

CREATE TABLE viewamtm(
	num NUMBER PRIMARY KEY NOT NULL, -- 占쏙옙 占쌉시깍옙占쏙옙 占쏙옙占쏙옙占싹댐옙 占쏙옙
	checkbox VARCHAR2(60),
	title VARCHAR2(50) NOT NULL,
	content VARCHAR2(4000) NOT NULL, --占쏙옙 占쏙옙占쏙옙
	noticefile VARCHAR2(60),	--첨占쏙옙占쏙옙占쏙옙
	writer VARCHAR2(10) DEFAULT NULL, --占쌜쇽옙占쏙옙
	answer VARCHAR2(10) DEFAULT NULL, --占썰변占쏙옙占쏙옙
	reg_date TIMESTAMP(9) --占쌀쇽옙占쏙옙 占쏙옙占쏙옙 9占쌘몌옙占쏙옙占쏙옙
);

	CREATE SEQUENCE board1_seq;
	
	CREATE SEQUENCE bookmark_seq;
	
	CREATE SEQUENCE viewnotice_seq;
	
	CREATE SEQUENCE viewamtm_seq;
	
	
	
	
	
	
	SELECT list2.*
	from ( 
		select ROWNUM r, board1.*
		from board1
	)list2
	where r between 1 and 5
	
	
	
	from board1;
	
	DELETE board1;
	
	SELECT * FROM board1
	SELECT * FROM bookmark
	
	SELECT COUNT(*) FROM board1
		