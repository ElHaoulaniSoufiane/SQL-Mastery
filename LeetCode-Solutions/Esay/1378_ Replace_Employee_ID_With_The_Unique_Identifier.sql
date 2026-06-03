/*
Problem: 1378. Replace Employee ID With The Unique Identifier
Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

Object:
- Show the unique ID of each employee.
- If an employee does not have a unique ID, show NULL instead.

Logic: 
- Use LEFT JOIN to keep ALL employees from Employees table even if they have no match in EmployeeUNI.
- Join condition E.id = EUNI.id matches each employee to their corresponding unique ID.
- If no match found → unique_id returns NULL automatically.

- Complexity:
- Time:  O(n + m) → n = rows in Employees, m = rows in EmployeeUNI
- Space: O(n)     → output has one row per employee
*/

SELECT unique_id, name
FROM Employees E
LEFT JOIN EmployeeUNI EUNI ON E.id = EUNI.id
