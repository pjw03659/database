CREATE TABLE "HR"."MEMBER" 
   (	
   	"ID" VARCHAR2(10), 
	"PW" VARCHAR2(10), 
	"NAME" VARCHAR2(10), 
	"TEL" VARCHAR2(10)
   ) 
   
CREATE TABLE "HR"."BBS"
(	
	"no" VARCHAR2(100),
	"TITLE" VARCHAR2(100),
	"CONTENT" VARCHAR2(100),
	"WRITER" VARCHAR2(100)
)

CREATE TABLE "HR"."PRODUCT"(
ID VARCHAR2(200),
NAME VARCHAR2(200),
CONTENT VARCHAR2(200),
PRICE VARCHAR2(200),
COMPANY VARCHAR2(200),
IMG VARCHAR2(200)
)


CREATE TABLE "HR".ORDERLIST (
	"no" VARCHAR2(100),
	"MEMBER_ID" VARCHAR2(100),
	"PRODUCT_ID" VARCHAR2(100),
	"TOTAL_COUNT" VARCHAR2(100)
)


SELECT * FROM "HR".DEPART

SELECT * FROM "HR".STUDENT

SELECT * FROM "HR".SUBJET 

CREATE TABLE "HR"."BBS3" 
(	"no" VARCHAR2(100), 
	"TITLE" VARCHAR2(100), 
	"CONTENT" VARCHAR2(100), 
	"WRITER" VARCHAR2(100)
) 

ALTER TABLE HR.BBS3 
ADD CONSTRINT BB3_PK PRIMARY KEY ("no") ENABLE

ALTER TABLE HR.BBS3 
ADD CONSTRAINT FK_MEMBER33
FOREIGN KEY (WRITER) REFERENCES HR."MEMBER"(ID)

CREATE TABLE "HR"."DEPART2"(
	"ID" VARCHAR2(100),
	"NAME" VARCHAR2(100),
	"INSTRUCTOR" VARCHAR2(100),
	CONSTRAINT "DEPART2_PK" PRIMARY KEY ("ID")
	
)

CREATE TABLE "HR"."STUDENT2"(
	"ID" VARCHAR2(100),
	"NAME" VARCHAR2(100),
	"TEL" VARCHAR2(100),
	"DEPART_ID" VARCHAR2(100)
)

ALTER TABLE "HR"."STUDENT2"
ADD CONSTRAINT STUDENT2_PK
PRIMARY KEY ("ID")

ALTER TABLE "HR"."STUDENT2"
ADD CONSTRAINT STUDENT2_FK
FOREIGN KEY ("DEPART_ID")
REFERENCES "HR"."DEPART2" ("ID")


CREATE TABLE "HR"."MEMBER22"
AS SELECT * FROM "HR"."MEMBER"

INSERT INTO "HR"."MEMBER22"
VALUES('banana','banana','banana','banana',sysdate)

SELECT * FROM "HR"."MEMBER22" 

CREATE SEQUENCE pd_id_seq INCREMENT BY 1

INSERT INTO HR.BBS3 
VALUES (pd_id_seq.nextval, 'HAPPY','HAPPY DAY','ICE')

INSERT INTO HR.BBS3 
VALUES (pd_id_seq.nextval, 'HAPPY2','HAPPY DAY','ICE')

SELECT * FROM HR.BBS3 



CREATE TABLE ORDERLIST3(
	"ID" NUMBER(38,0),
	"TITLE" VARCHAR2(100),
	"PRICE" NUMBER(38,0)
)

CREATE SEQUENCE OR_SEQ
START WITH 1
INCREMENT BY 1

INSERT INTO ORDERLIST3 VALUES (OR_SEQ.nextval, 'ICE','1000')

INSERT INTO ORDERLIST3 VALUES (OR_SEQ.nextval, 'APPLE','2500')

INSERT INTO ORDERLIST3 VALUES (OR_SEQ.nextval, 'BANANA','3000')

INSERT INTO ORDERLIST3 VALUES (OR_SEQ.nextval, 'MELON','10000')

INSERT INTO ORDERLIST3 VALUES (OR_SEQ.nextval, 'LEMON','5000')

SELECT * FROM ORDERLIST3 
ORDER BY ID DESC

CREATE TABLE "HR".DEPT
(
DEPTNO NUMBER(2),
DNAME VARCHAR2(14 BYTE),
LOC VARCHAR2(13 BYTE)

)

CREATE TABLE "HR".EMP(
EMPNO NUMBER(4),
ENAME VARCHAR2(10 BYTE),
JOB VARCHAR2(9 BYTE),
MGR NUMBER(4),
HIREDATE DATE,
SAL NUMBER(7,2),
COMM NUMBER(7,2),
DEPTNO NUMBER(2)
)

CREATE TABLE "HR".SALGRADE(
GRADE NUMBER,
LOSAL NUMBER,
HISAL NUMBER
)



SELECT * FROM "HR".EMP

SELECT DISTINCT DEPTNO FROM "HR".EMP

SELECT ENAME, SAL*12 AS YEARSAL FROM "HR".EMP

SELECT * FROM "HR".EMP 
WHERE NOT DEPTNO =30
ORDER BY EMPNO DESC
 
SELECT * FROM "HR".EMP 
WHERE SAL != 3000

SELECT * FROM "HR".EMP 
WHERE JOB IN ('SALESMAN','MANAGER')
ORDER BY JOB

SELECT * FROM "HR".EMP 
WHERE JOB NOT IN ('SALESMAN','MANAGER')
ORDER BY JOB

SELECT * FROM "HR".EMP 
WHERE SAL BETWEEN 2000 AND 3000
ORDER BY EMPNO

CREATE TABLE "HR".DETP_TEMP2
AS
SELECT * FROM "HR".DEPT

SELECT * FROM "HR".DETP_TEMP2

UPDATE "HR".DETP_TEMP2
SET DNAME = 'DATABASE',LOC='BUSAN'
WHERE DEPTNO=40