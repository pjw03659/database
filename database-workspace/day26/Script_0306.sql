CREATE TABLE subject2 
(	강좌이름 varchar2(100),
	강의실 varchar2(100)
)

CREATE TABLE student_info
(	학생번호 integers,
	학생이름 varchar2(100),
	주소 varchar2(100),
	학과 varchar2(100)
)

CREATE TABLE "record"
(	학생번호 float,
	강좌이름 varchar2(100),
	성적 number(28,0)
)

CREATE TABLE department
(	학과 varchar2(100),
	학과사무실 varchar2(100)
)

INSERT INTO DEPARTMENT VALUES ('컴퓨터학과', '공학관101')

INSERT INTO DEPARTMENT VALUES ('체육학과', '체육관101')

INSERT INTO SUBJECT  VALUES ('데이터베이스', '공학관110')

INSERT INTO SUBJECT  VALUES ('스포츠경영학', '체육관103')

INSERT INTO SUBJECT  VALUES ('자료구조', '공학관111')

INSERT INTO STUDENT_INFORMATION VALUES (501, '박지성', '영국 멘체스터','컴퓨터학과')

INSERT INTO STUDENT_INFORMATION VALUES (401, '김연아', '대한민국 서울','컴퓨터학과')

INSERT INTO STUDENT_INFORMATION VALUES (402, '장미란', '대한민국 강원도','컴퓨터학과')

INSERT INTO STUDENT_INFORMATION VALUES (502, '추신수', '미국 클리블랜드','컴퓨터학과')

INSERT INTO RECORD VALUES (501, '데이터베이스', 3.5)

INSERT INTO RECORD VALUES (401, '데이터베이스', 4)

INSERT INTO RECORD VALUES (402, '스포츠경영학', 3.5)

INSERT INTO RECORD VALUES (502, '자료구조', 4)

INSERT INTO RECORD VALUES (501, '자료구조', 3.5)

SELECT * FROM DEPARTMENT d

SELECT * FROM SUBJECT s 

SELECT * FROM STUDENT_INFORMATION 

SELECT * FROM RECORD  

SELECT * 
FROM STUDENT_INFORMATION si , "RECORD" r 
WHERE(si.학생번호=R.학생번호)

SELECT * 
FROM  SUBJECT s, "RECORD" r 
WHERE(s.강좌이름=R.강좌이름)

UPDATE STUDENT_INFORMATION 
SET 주소 = '대한민국 대전'
WHERE 학생번호 = 501

INSERT INTO STUDENT_INFORMATION VALUES (503, '홍길동', '대한민국 부산','컴퓨터학과')

DELETE FROM "RECORD" WHERE 강좌이름='데이터베이스'

INSERT INTO RECORD VALUES (501, '데이터베이스', 3.5)

SELECT * FROM STUDENT_INFORMATION si WHERE 학생번호 IN 
(SELECT 학생번호 FROM RECORD WHERE 성적 = 3.5)

SELECT * FROM RECORD WHERE 강좌이름 = 
(SELECT 강좌이름 FROM SUBJECT WHERE 강의실 ='공학관110')


INSERT INTO 영화관 VALUES ('서울', '합정점')

INSERT INTO 영화관 VALUES ('서울', '김포공항점')

INSERT INTO 영화관 VALUES ('부산', '해운대점')

INSERT INTO 영화관 VALUES ('부산', '서면점')

INSERT INTO 영화관 VALUES ('인천', '부평점')

INSERT INTO 영화관 VALUES ('인천', '부천점')

INSERT INTO 영화관 VALUES ('대구', '동성로점')

INSERT INTO 영화관 VALUES ('대구', '수성점')

SELECT * FROM 영화관

INSERT INTO 영화 VALUES ('더 퍼스트 슬램덩크','애니메이션',001,'박정우')

INSERT INTO 영화 VALUES ('카운트','드라마',002,'양현준')

INSERT INTO 영화 VALUES ('러브로지','로맨스',003,'노지인')

INSERT INTO 영화 VALUES ('스즈메의 문단속','애니메이션',004,'안정우')

INSERT INTO 영화 VALUES ('귀멸의 칼날','애니메이션',005,'현유나')

SELECT * FROM 영화

SELECT * FROM 예매하기

INSERT INTO 예매하기 VALUES ('합정점', 2, '카카오페이', 003, 123)

INSERT INTO 예매하기 VALUES ('서면점', 4, '신용카드', 005, 456)

INSERT INTO 예매하기 VALUES ('부평점', 1, '네이버페이', 004, 789)

INSERT INTO 예매하기 VALUES ('동성로점', 2, '현금', 002, 999)

INSERT INTO 예매하기 VALUES ('해운대점', 3, '체크카드', 001, 777)

SELECT *
FROM 예매하기 B, 영화관 C
WHERE (B.영화관 = C.지점)

SELECT *
FROM 예매하기 B, 영화 M
WHERE (B.영화코드=M.영화코드)

SELECT *
FROM 예매하기 B
LEFT OUTER JOIN 영화 M
ON (B.영화코드=M.영화코드)

SELECT *
FROM 예매하기 B
RIGHT OUTER JOIN 영화 M
ON (B.영화코드=M.영화코드)

