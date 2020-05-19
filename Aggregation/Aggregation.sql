/* Author : Sravya Pagadala

My solutions to various hackerrank SQL problems using MySQL

*/

--QUESTION : Revising Aggregations - The Count Function
-- https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem

select count(id) from city where population > 100000

--QUESTION : Revising Aggregations - The Sum Function
-- https://www.hackerrank.com/challenges/revising-aggregations-sum/problem

select sum(population) from city where district = 'California'

--QUESTION : Revising Aggregations - Averages
--https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem

select avg(population) from city where district = 'California'

--QUESTION : Average Population
--https://www.hackerrank.com/challenges/average-population/problem

select round(avg(population)) from city

-- QUESTION : Japan Population
--https://www.hackerrank.com/challenges/japan-population/problem

select sum(population) from city where countrycode = 'JPN'

--QUESTION : Population Density Difference

--https://www.hackerrank.com/challenges/population-density-difference/problem

select max(population) - min(population) from city 

--QUESTION : The Blunder
--https://www.hackerrank.com/challenges/the-blunder/problem

SELECT ceil(AVG(Salary) - AVG(REPLACE(Salary, '0', '')))
  FROM EMPLOYEES;
  
 --QUESTION :Top Earners 
 -- https://www.hackerrank.com/challenges/earnings-of-employees/problem
select salary*months as earnings , count(*) from employee group by earnings order by earnings desc limit 1


--QUESTION : Weather Observation Station 2
--https://www.hackerrank.com/challenges/weather-observation-station-2/problem

select round(sum(lat_n),2),round(sum(long_w),2) from station


--QUESTION : Weather Observation Station 13
--https://www.hackerrank.com/challenges/weather-observation-station-13/problem

select truncate(sum(lat_n),4) from station where lat_n between 38.7880 and 137.2345;

--QUESTION : Weather Observation Station 14
--https://www.hackerrank.com/challenges/weather-observation-station-14/problem

select truncate(max(lat_n),4) from station where lat_n <137.2345


--QUESTION : Weather Observation Station 15
--https://www.hackerrank.com/challenges/weather-observation-station-15/problem

select round(long_w,4) from station where lat_n = (select max(lat_n) from station where lat_n< 137.2345)


--QUESTION : Weather Observation Station 16
--https://www.hackerrank.com/challenges/weather-observation-station-16/problem

select round(lat_n,4) from station  where lat_n > 38.7780 order by lat_n limit 1


--QUESTION : Weather Observation Station 17
--https://www.hackerrank.com/challenges/weather-observation-station-17/problem

select round(lat_n,4) from station  where lat_n > 38.7780 order by lat_n limit 1


--QUESTION : Weather Observation Station 18
--https://www.hackerrank.com/challenges/weather-observation-station-18/problem
  
select Round(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)),4)
FROM STATION;

--QUESTION : Weather Observation Station 19
--https://www.hackerrank.com/challenges/weather-observation-station-2/problem

SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4)
FROM STATION;



--QUESTION : Weather Observation Station 20
--https://www.hackerrank.com/challenges/weather-observation-station-20/problem

SELECT ROUND(S.LAT_N, 4)
  FROM STATION S
 WHERE (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N)
     = (SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N);