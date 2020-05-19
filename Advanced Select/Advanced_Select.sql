/* Author : Sravya Pagadala

My solutions to various hackerrank SQL problems using MySQL

*/

-- Question : Type of Triangle
-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem

SELECT CASE WHEN A + B > C AND A+C>B AND B+C>A THEN
CASE WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR B = C OR A = C THEN 'Isosceles'
WHEN A != B OR B != C OR A != C THEN 'Scalene' END ELSE 'Not A Triangle' END FROM TRIANGLES;

--Question : The PADS
-- https://www.hackerrank.com/challenges/the-pads/problem

select concat(name,'(',substr(occupation,1,1), ')') from occupations order by name;

select concat('There are a total of ', count(occupation),' ', lower(occupation),'s.') as total from occupations group by occupation order by total

-- Question : Occupations

--https://www.hackerrank.com/challenges/occupations/problem

set @d=0, @p=0, @s=0, @a=0;

select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case 
            when Occupation='Doctor' then (@d:=@d+1)
            when Occupation='Professor' then (@p:=@p+1)
            when Occupation='Singer' then (@s:=@s+1)
            when Occupation='Actor' then (@a:=@a+1) 
            end as Row,
        case when Occupation='Doctor' then Name end as Doctor,
        case when Occupation='Professor' then Name end as Professor,
        case when Occupation='Singer' then Name end as Singer,
        case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) as temp
group by Row;


/*
The logic of this query is:

Reshpe Occupation into 4 columns with their index in each occupation, this leads to Temp table (which has many NULL).
Then group Temp by index and select corresponding Name for each Occupation.
min()/max() will return a name for specific index and specific occupation. If there is a name, it will return it, if not, return NULL */


--Question : Binary Tree Nodes
--https://www.hackerrank.com/challenges/binary-search-tree-1/problem

SELECT BT.N,
CASE
    WHEN BT.P IS NULL THEN 'Root'
    WHEN EXISTS (SELECT B.P FROM BST B WHERE B.P = BT.N) THEN 'Inner'        
    ELSE 'Leaf'
END
FROM BST AS BT 
ORDER BY BT.N


--Question : New Companies
-- https://www.hackerrank.com/challenges/the-company/problem

select C.company_code, 
       C.founder, 
       COUNT(DISTINCT E.lead_manager_code), 
       COUNT(DISTINCT E.senior_manager_code), 
       COUNT(DISTINCT E.manager_code), 
       COUNT(DISTINCT E.employee_code) 
              from Company C
              INNER JOIN Employee E ON C.company_code = E.company_code
              GROUP BY C.company_code, C.founder
              ORDER BY C.company_code ASC;
			  
