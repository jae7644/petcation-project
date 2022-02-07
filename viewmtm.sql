DROP TABLE viewmtm PURGE;

CREATE TABLE viewmtm(
	num NUMBER PRIMARY KEY NOT NULL, -- 번호
	checkbox VARCHAR2(60),
	title VARCHAR2(50) NOT NULL,
	content VARCHAR2(4000) NOT NULL, --내용
	noticefile VARCHAR2(60),		--첨부파일
	readcount NUMBER DEFAULT 0,		--조회수
	answer VARCHAR2(4000),	--답변여부 
	writer VARCHAR2(10) DEFAULT NULL, --작성자
	reg_date TIMESTAMP(9) --작성일
);

	CREATE SEQUENCE viewmtm_seq;
	
	SELECT * from viewmtm;