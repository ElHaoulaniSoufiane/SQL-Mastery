/*
Problem: 197. Rising Temperature
Link: https://leetcode.com/problems/rising-temperature/

Object:
- Find all dates where the temperature was higher than the previous day.
Logic:
- Use INNER JOIN to compare each day with the day before it.
- Join condition DATEDIFF(today.recordDate, yesterday.recordDate) = 1 matches each row with its previous day.
- We only want days where today's temperature is strictly greater than yesterday's.
- Filter with WHERE today.temperature > yesterday.temperature to get those days.
- Complexity:
- Time:  O(n²)
- Space: O(n)
*/

SELECT today.id
FROM Weather today
INNER JOIN Weather yesterday ON DATEDIFF(today.recordDate, yesterday.recordDate) = 1
WHERE today.temperature > yesterday.temperature
