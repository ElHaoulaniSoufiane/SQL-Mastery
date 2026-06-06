/*
Problem: 1581. Customer Who Visited but Did Not Make Any Transactions
Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

Object:
- Find customers who visited without making any transactions and count how many times.
Logic:
- Use LEFT JOIN to keep all visits even if there is no matching transaction.
- Join condition V.visit_id = T.visit_id links each visit to its transactions.
- Filter with WHERE T.transaction_id IS NULL to keep only visits with no transaction.
- GROUP BY customer_id to count how many no-transaction visits each customer made.
- Complexity:
- Time:  O(v + t)
- Space: O(v)
*/
SELECT V.customer_id, COUNT(V.customer_id) AS count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE T.transaction_id IS NULL
GROUP BY V.customer_id
