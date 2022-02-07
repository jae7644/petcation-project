DROP TABLE viewfaq PURGE;

CREATE TABLE viewfaq(
	num NUMBER PRIMARY KEY NOT NULL, -- 踰덊샇
	checkbox VARCHAR2(60),
	title VARCHAR2(50) NOT NULL,
	content VARCHAR2(4000) NOT NULL, --�궡�슜
	noticefile VARCHAR2(60),		--泥⑤��뙆�씪
--	readcount NUMBER DEFAULT 0,		--議고쉶�닔
	answer VARCHAR2(4000),	--�떟蹂��뿬遺� 
	writer VARCHAR2(10) DEFAULT NULL, --�옉�꽦�옄
	reg_date TIMESTAMP(9) --�옉�꽦�씪
);

CREATE SEQUENCE viewfaq_seq;
drop sequence viewfaq_seq;