
/* Drop Tables */

DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE Lcart CASCADE CONSTRAINTS;
DROP TABLE Lorder_datail CASCADE CONSTRAINTS;
DROP TABLE attraction CASCADE CONSTRAINTS;
DROP TABLE Lorders CASCADE CONSTRAINTS;
DROP TABLE Lqna CASCADE CONSTRAINTS;
DROP TABLE Lmember CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE Lworker CASCADE CONSTRAINTS;

/* Create Sequences */

CREATE SEQUENCE attraction_aseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lcart_Lcseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lorders_Loseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lorder_datail_Lodesq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE Lqna_Lqseq INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE notice_nseq INCREMENT BY 1 START WITH 1;

/* Create Tables */
select * from attraction;

CREATE TABLE address
(
	zip_num varchar2(7) NOT NULL,
	sido varchar2(30) NOT NULL,
	gugun varchar2(30) NOT NULL,
	zip_code varchar2(30),
	bunji varchar2(30),
	dong varchar2(100)
);


CREATE TABLE attraction
(
	aseq number(5,0) NOT NULL,
	pnum number(10,0) NOT NULL,
	atname varchar2(100) NOT NULL,
	acontent varchar2(1000),
	act1 varchar2(100),
	act2 varchar2(100),
	image varchar2(255),
	limitkey varchar2(1000),
	limitage varchar2(1000),
	useyn char(1) DEFAULT 'Y',
	bestyn char(1) DEFAULT 'Y',
	aresult number(10,0),
	PRIMARY KEY (aseq)
);




CREATE TABLE Lcart
(
	Lcseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	aseq number(5,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	result char(1) DEFAULT '1' NOT NULL,
	indate date DEFAULT sysdate,
	PRIMARY KEY (Lcseq)
);


CREATE TABLE Lmember
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(20) NOT NULL,
	email varchar2(40) NOT NULL,
	zip_num varchar2(7),
	address1 varchar2(50),
	address2 varchar2(50),
	indate date DEFAULT sysdate,
	PRIMARY KEY (id)
);


CREATE TABLE Lorders
(
	Loseq number(10,0) NOT NULL,
	id varchar2(20) NOT NULL,
	indate date DEFAULT sysdate,
	oresult number(10,0),
	adult number(10,0),
	teenager number(10,0),
	children number(10,0),
	PRIMARY KEY (Loseq)
);


CREATE TABLE Lorder_datail
(
	Lodesq number(10,0) NOT NULL,
	aseq number(5,0) NOT NULL,
	Loseq number(10,0) NOT NULL,
	quantity number(5,0) DEFAULT 1 NOT NULL,
	PRIMARY KEY (Lodesq)
);


CREATE TABLE Lqna
(
	Lqseq number(5,0) NOT NULL,
	id varchar2(20) NOT NULL,
	subject varchar2(100) NOT NULL,
	content varchar2(1000) NOT NULL,
	reply varchar2(1000),
	rep char(1) DEFAULT '1',
	indate date DEFAULT sysdate,
	PRIMARY KEY (Lqseq)
);


CREATE TABLE Lworker
(
	id varchar2(20) NOT NULL,
	pwd varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	phone varchar2(0) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE notice
(
	Lnseq number(10,0) NOT NULL,
	notice_id varchar2(20) NOT NULL,
	title varchar2(10),
	ncontent varchar2(1000),
	indate date DEFAULT stsdate,
	PRIMARY KEY (Lnseq)
);



/* Create Foreign Keys */

ALTER TABLE Lcart
	ADD FOREIGN KEY (aseq)
	REFERENCES attraction (aseq)
;


ALTER TABLE Lorder_datail
	ADD FOREIGN KEY (aseq)
	REFERENCES attraction (aseq)
;


ALTER TABLE Lcart
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lorders
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lqna
	ADD FOREIGN KEY (id)
	REFERENCES Lmember (id)
;


ALTER TABLE Lorder_datail
	ADD FOREIGN KEY (Loseq)
	REFERENCES Lorders (Loseq)
;


ALTER TABLE notice
	ADD FOREIGN KEY (notice_id)
	REFERENCES Lworker (id)
;


