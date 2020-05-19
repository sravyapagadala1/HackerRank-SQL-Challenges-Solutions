/* Author : Sravya Pagadala

My solutions to various hackerrank SQL problems using MySQL

*/

-- QUESTION : Revising the Select Query I
-- https://www.hackerrank.com/challenges/revising-the-select-query/problem

select distinct * from city where countrycode = 'USA'and  population >= 100000 


--QUESTION : Revising the Select Query II
--https://www.hackerrank.com/challenges/revising-the-select-query-2/problem

select name from city where population >120000 and countrycode = 'USA'


--QUESTION : Select All
--https://www.hackerrank.com/challenges/select-all-sql/problem

select * From city 


--QUESTION : Select By ID

select * from city where id = 1661

--QUESTION : Japanese Cities' Attributes
-- https://www.hackerrank.com/challenges/japanese-cities-attributes/problem

select * from city where countrycode = 'JPN'


-- QUESTION : Japanese Cities' Names
--https://www.hackerrank.com/challenges/japanese-cities-name/problem

select name from city where countrycode = 'JPN'


--QUESTION : Weather Observation Station 1
--https://www.hackerrank.com/challenges/weather-observation-station-1/problem

select city , state from station 

--QUESTION : Weather Observation Station 3
--https://www.hackerrank.com/challenges/weather-observation-station-3/problem

select distinct city from station where mod(id,2) = 0 

--QUESTION :Weather Observation Station 4
-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem

select (count(city) -  count( distinct city) ) as difference  from station 


--QUESTION :Weather Observation Station 5
--https://www.hackerrank.com/challenges/weather-observation-station-5/problem

select city, char_length(city) from station order by char_length(city),city  limit 1 ;

select city, char_length(city) from station order by char_length(city) desc,city  limit 1 ;

--QUESTION :Weather Observation Station 6
--https://www.hackerrank.com/challenges/weather-observation-station-6/problem

select distinct city from station where city like 'A%' or city like 'E%'  or city like 'I%'  or city like 'O%'  or city like 'U%'

--QUESTION :Weather Observation Station 7
--https://www.hackerrank.com/challenges/weather-observation-station-7/problem

select distinct city from station where city like '%a' or city like '%e'  or city like '%i'  or city like '%o'  or city like '%u'

--QUESTION :Weather Observation Station 8
--https://www.hackerrank.com/challenges/weather-observation-station-8/problem

SELECT DISTINCT city
FROM   station
WHERE  city RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$'
--rlike should be caps


--QUESTION :Weather Observation Station 9
-- https://www.hackerrank.com/challenges/weather-observation-station-9/problem


SELECT DISTINCT city
FROM   station
WHERE  city not RLIKE '^[aeiouAEIOU].*'



--QUESTION :Weather Observation Station 10
--https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT city
FROM   station
WHERE  city not RLIKE '.*[aeiouAEIOU]$'

--QUESTION :Weather Observation Station 11
--https://www.hackerrank.com/challenges/weather-observation-station-11/problem
SELECT DISTINCT city
FROM   station
WHERE  city not RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$'


--QUESTION :Weather Observation Station 12
--https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT DISTINCT city
FROM   station
WHERE  city not RLIKE '^[aeiouAEIOU].*' and CITY not RLIKE  '.*[aeiouAEIOU]$'

--QUESTION :Higher Than 75 Marks
--https://www.hackerrank.com/challenges/more-than-75-marks/problem

select name from students where marks > 75 order by substr(name,-3,3) , id


--QUESTION : Employee Names
--https://www.hackerrank.com/challenges/name-of-employees/problem

select name from employee order by name

--QUESTION : Employee Salaries
--https://www.hackerrank.com/challenges/salary-of-employees/problem

select name from employee where salary > 2000 and months < 10 order by employee_id 



