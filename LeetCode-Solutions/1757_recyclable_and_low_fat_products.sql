/*
Problem: 1757. Recyclable and Low Fat Products
Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

Logic: 
- The goal is to retrieve the unique identifier for products that meet two specific criteria.
- I used a WHERE clause with the AND operator to ensure both 'low_fats' and 'recyclable' columns are equal to 'Y'.
- Complexity: O(n) scan of the table where n is the number of rows.
*/

SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';
