# 문제 1) 사원들의 사원번호 , 근무번호 , 근무 부서 이름을 가져오기.

SELECT
		DE.EMP_NO   	AS EMP_NO,              
		D.DEPT_NO   	AS DEPT_NO,  
		D.DEPT_NAME 	AS DEPT_NAME
FROM 
		DEPARTMENTS D
	    INNER JOIN DEPT_EMP DE              
				ON D.DEPT_NO = DE.DEPT_NO;



# 문제 2) 직원의 사원번호 , 이름(first,last) , 및 업무를 조회하기.

SELECT 
		E.EMP_NO 		AS EMP_NO,
	    E.FIRST_NAME 	AS FIRST_NAME,
	    E.LAST_NAME 	AS LAST_NAME,
	    T.TITLE  		AS TITLE
FROM 
		EMPLOYEES E
	INNER JOIN TITLES T 
			ON T.EMP_NO = E.EMP_NO;
    
    
    
# 문제 3) 사원번호 , 사원이름(first_name,last_name) , 부서번호 , 부서이름을 조회하기.

SELECT 
		E.EMP_NO		AS ENO_NO,
	    E.FIRST_NAME	AS FIRST_NAME,
	    E.LAST_NAME		AS LAST_NAME,
	    D.DEPT_NO		AS DEPT_NO,
		D.DEPT_NAME 	AS DEPT_NAME
FROM 
		EMPLOYEES E
	INNER JOIN DEPT_EMP DE 
			ON E.EMP_NO = DE.EMP_NO
	INNER JOIN DEPARTMENTS D
			ON DE.DEPT_NO = D.DEPT_NO;


# 문제 4) 각사원들의 사원번호 , 이름(first,last) , 부서 번호를 조회하기. 

SELECT 
		E.EMP_NO 		AS EMP_NO, 
		E.FIRST_NAME 	AS FIRST_NAME, 
	    E.LAST_NAME		AS LAST_NAME,
		DE.DEPT_NO	    AS DEPT_NO
FROM 
		EMPLOYEES E 
	   INNER JOIN DEPT_EMP DE
			   ON E.EMP_NO = DE.EMP_NO;



# 문제 5) 사원들의 사원번호 , 이름 , 근무 부서 이름을 조회하기.

SELECT 
		E.EMP_NO     AS EMP_NO, 
		E.FIRST_NAME AS FIRST_NAME, 
		E.LAST_NAME  AS LAST_NAME, 
		D.DEPT_NAME  AS DEPT_NAME
FROM 
		DEPARTMENTS D 
		 INNER JOIN DEPT_EMP DE
				 ON D.DEPT_NO = DE.DEPT_NO
		 INNER JOIN EMPLOYEES E
				 ON DE.EMP_NO = E.EMP_NO;
        
      
      
# 문제 6) 부서별로 그룹화하고 부서이름 , 부서번호 , 직원수를 조회하고 직원수가 많은 곳부터 조회하기. 

SELECT 
		D.DEPT_NAME AS DEPT_NAME, 
	    D.DEPT_NO	AS DEPT_NO,
	    COUNT(*)	AS EMP_COUNT
FROM 
		DEPT_EMP DE
		INNER JOIN DEPARTMENTS D 
				ON D.DEPT_NO=DE.DEPT_NO
GROUP BY 
		D.DEPT_NAME
ORDER BY
		EMP_COUNT DESC;



# 문제 7) 부서별로 그룹화하고 부서별안에 성별을 그룹화하여 직원 수를 조회하기. 

SELECT 
		D.DEPT_NAME AS DEPT_NAME, 
		E.GENDER	AS GENDER, 
		COUNT(*)	AS COUNT
FROM 
		DEPT_EMP DE
	  INNER JOIN DEPARTMENTS D 
			  ON D.DEPT_NO=DE.DEPT_NO
	  INNER JOIN EMPLOYEES E 
			  ON E.EMP_NO=DE.EMP_NO
 GROUP BY 
		D.DEPT_NAME, 
		E.GENDER;
     