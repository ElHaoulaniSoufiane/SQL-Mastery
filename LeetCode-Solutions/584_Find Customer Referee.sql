/*
Problem: 584. Find Customer Referee
Link: https://leetcode.com/problems/find-customer-referee

Logic:
- Object: Find customers who were not referred by customer_id 2.
- Because NULL values represent customers who haven't been referred, we include them to meet the requirement.
- Complexity: O(n) scan of the table where n is the number of rows.
*/

SELECT name
FROM Customer
WHERE (referee_id != 2) OR (referee_id IS NULL)
