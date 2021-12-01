/*

	# 조인(JOIN) 
    
		- 조인은 두 개 이상의 테이블을 결합하는 연산이다.
		- 각 테이블은 각자에 맞는 데이터를 저장하고 있는데, 서로 다른 테이블에서 데이터를 가져오려면 조인 연산을 해야 한다.
		- 주로 주키(PRIMARY KEY)와 참조키(FOREIGN KEY)를 기준으로 테이블을 결합한다.
        - 대표적인 조인은 INNER , LEFT(LEFT OUTER), RIGHT(RIGHT OUTER) 조인이 있다.
		- 주로 테이블명은 별칭을 사용한다.
        - INNER JOIN은 INNER를 생략한 JOIN으로 사용가능하다.        Ex) INNER JOIN , JOIN
        - LEFT JOIN은 OUTER를 생략한 LEFT JOIN으로 사용가능하다.    Ex) LEFT OUTER JOIN , LEFT JOIN
        - RIGHT JOIN은 OUTER를 생략한 RIGHT JOIN으로 사용가능하다.  Ex) RIGHT OUTER JOIN , RIGHT JOIN
   
		[형식]
		
		SELECT
				*
		FROM
				(TABLE1 ALIAS)
			INNER(LEFT,RIGHT) JOIN (TABLE2 ALIAS)
					ON (CONDITION)

	
*/


# INNER JOIN , LEFT JOIN , RIGHT JOIN 테스트를 위한 데이터 셋업
CREATE TABLE T_BANK (
	BANK_CD VARCHAR(10),
    BANK_NM VARCHAR(10)
);


CREATE TABLE T_TAX (
    IDX 		 INT,
	BANK_CD 	 VARCHAR(10) ,
    TAX 		 INT,
    DEPOSIT_DATE VARCHAR(20)
);

INSERT INTO T_BANK VALUES("SH" , "신한은행");
INSERT INTO T_BANK VALUES("NH" , "농협은행");
INSERT INTO T_BANK VALUES("KB" , "국민은행");
INSERT INTO T_BANK VALUES("WR" , "우리은행");
INSERT INTO T_BANK VALUES("HN" , "하나은행");


INSERT INTO T_TAX VALUES(1  ,"SH" , 5000000 , '2020-12-12');
INSERT INTO T_TAX VALUES(2 , "NH" , 3000000 , '2020-12-23');
INSERT INTO T_TAX VALUES(3 , "KB" , 7000000 , '2020-12-30');
INSERT INTO T_TAX VALUES(4 , "ETC" , 10000 , '2020-12-31');

SELECT * FROM T_BANK;
SELECT * FROM T_TAX;

# WHERE절을 이용한 두 테이블의 join
SELECT
		*
FROM
		T_BANK,
        T_TAX

# WHERE절에 별칭을 추가 
# INNER JOIN 사용예시
# LEFT JOIN 사용예시
# RIGHT 조인 사용 예시