/*
Problem: 1068. Product Sales Analysis I
Link: https://leetcode.com/problems/product-sales-analysis-i/

Object:
- Report the product_name, year, and price for each sale.

Logic: 
- Use INNER JOIN to match records between Sales and Product tables.
- Join condition S.product_id = P.product_id links each sale to its corresponding product details.
- We only want sales that have a valid product match, which INNER JOIN handles automatically.

- Complexity:
- Time:  O(s + p)
- Space: O(s)
*/

SELECT P.product_name, S.year, S.price
FROM Sales S
INNER JOIN Product P ON S.product_id = P.product_id
