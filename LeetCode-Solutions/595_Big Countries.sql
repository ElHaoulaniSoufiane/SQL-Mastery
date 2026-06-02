/*
Problem: 595. Big Countries
Link: https://leetcode.com/problems/big-countries/

Logic: 
- Find countries with population >= 25M or area >= 3M km²
- Used a WHERE clause with OR operator to filter both conditions

Complexity:
- Time : O(n)
- Space : O(1)
*/

SELECT name, population, area
FROM World
WHERE (population >= 25000000) OR (area >= 3000000)
