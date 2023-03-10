SELECT CONCAT(EMPNO,':') AS RESULT FROM EMP

SELECT LENGTH(ENAME) FROM EMP

UPDATE EMP 
SET COMM =0
WHERE COMM IS NULL 

SELECT * FROM EMP e

SELECT SAL+COMM AS TOTAL FROM EMP e 

--연습문제
SELECT LENGTH(ENAME) FROM EMP e 

SELECT LENGTH(ENAME) FROM EMP
WHERE JOB ='MANAGER'

SELECT ENAME, JOB FROM EMP e 
WHERE COMM IS NULL

SELECT HIREDATE FROM EMP e 
WHERE COMM IS NOT NULL

SELECT SUBSTR(ENAME,2) FROM EMP

SELECT SUBSTR(JOB,1,3) FROM EMP e

SELECT REPLACE (ENAME, 'K','P') FROM EMP

SELECT EMPNO || '번은'||ENAME||'입니다.' FROM EMP e 

SELECT HIREDATE,
TO_CHAR(HIREDATE,'MM') AS MM, TO_CHAR(HIREDATE,'DAY') AS DAY
FROM EMP e 


SELECT JOB,
	DECODE(JOB,
		   'MANAGER', 'LEVEL1',
		   'SALESMAN','LEVEL2',
		   'LEVEL3')AS LEVEL_RESUL
FROM EMP e 
	
--------------------------
SELECT * FROM EMP e 

SELECT COUNT(*) 
FROM EMP e 
WHERE JOB='SALESMAN'

SELECT COUNT(SAL), SUM(SAL), AVG(SAL), MIN(SAL),MAX(SAL)
FROM EMP e 
GROUP BY JOB
ORDER BY JOB DESC

SELECT COUNT(SAL), SUM(SAL), AVG(SAL), MIN(SAL),MAX(SAL)
FROM EMP e 
GROUP BY JOB
HAVING COUNT(SAL)>=4
ORDER BY JOB DESC

-------------------
SELECT COUNT(*)
FROM EMP

SELECT COUNT(*)
FROM EMP e
WHERE DEPTNO =20 OR MGR<=70

SELECT MIN(SAL) 
FROM EMP e
WHERE DEPTNO=10 OR DEPTNO =20

SELECT MIN(SAL), MAX(SAL), SUM(SAL)
FROM EMP e 

SELECT AVG(SAL)
FROM EMP e 
GROUP BY DEPTNO

SELECT SUM(SAL)
FROM EMP e 
GROUP BY DEPTNO 
ORDER BY DEPTNO DESC

SELECT AVG(SAL)
FROM EMP e 
GROUP BY DEPTNO 
HAVING AVG(SAL)>2000
ORDER BY DEPTNO DESC

SELECT COUNT(*), AVG(SAL)
FROM EMP e 
WHERE JOB ='MANAGER'

SELECT COUNT(*)
FROM EMP e 
WHERE ENAME LIKE '%S%'

SELECT COUNT(*)
FROM EMP e 
WHERE COMM IS NOT NULL
GROUP BY SAL 
HAVING SAL >= 3000
ORDER BY SAL DESC
	
-------------
--join: 왜 하는가? 검색을 하고 싶은데 항목들이 여러개의 테이블에 흩어져있는 경우
--      테이블을 모아서 검색

SELECT *
FROM "MEMBER" m, BBS b
WHERE m.ID=b.WRITER 

SELECT B."no", TITLE, NAME
FROM "MEMBER" m, BBS b 
WHERE m.ID=b.WRITER 


----- Inner join: 테이블간 공통된 값만 추출
----- emp테이블과 dept테이블을 조인하세요.
----- 하나의 컬럼이상이 동일한 컬럼이 있어야함.
----- empno, ename, job, deptno, loc 컬럼 검색
----- 조인 조건: deptno

SELECT e.EMPNO , e.ENAME, e.JOB, d.DEPTNO, d.LOC  
FROM EMP e, DEPT d
WHERE d.DEPTNO =e.DEPTNO 

SELECT *
FROM "MEMBER" m
LEFT OUTER JOIN BBS b 
ON (m.ID =b.WRITER)

SELECT *
FROM "MEMBER" m
RIGHT OUTER JOIN BBS b 
ON (m.ID =b.WRITER)

SELECT *
FROM "EMP" E
LEFT OUTER JOIN "DEPT" D 
ON (E.DEPTNO=D.DEPTNO)

SELECT *
FROM "EMP" E
RIGHT OUTER JOIN "DEPT" D 
ON (E.DEPTNO=D.DEPTNO)


SELECT *
FROM "MEMBER" M, "BBS" B
WHERE (M.ID=B.WRITER)


SELECT *
FROM "MEMBER" M
LEFT OUTER JOIN "BBS" B
ON (M.ID=B.WRITER)

SELECT *
FROM "MEMBER" M
RIGHT OUTER JOIN "BBS" B
ON (M.ID=B.WRITER)


INSERT INTO COMPANY VALUES ('c100','good','seoul','011')

INSERT INTO COMPANY VALUES ('c200','joa','busan','012')

INSERT INTO COMPANY VALUES ('c300','maria','ulsan','013')

INSERT INTO COMPANY VALUES ('c400','my','kwangju','014')

SELECT * FROM COMPANY c

SELECT * FROM PRODUCT p 

SELECT * 
FROM "COMPANY" C , "PRODUCT" P
WHERE (C.ID=P.COMPANY)

SELECT *
FROM "COMPANY" C
LEFT OUTER JOIN "PRODUCT" P 
ON (C.ID=P.COMPANY)

SELECT *
FROM "COMPANY" C
RIGHT OUTER JOIN "PRODUCT" P 
ON (C.ID=P.COMPANY)



