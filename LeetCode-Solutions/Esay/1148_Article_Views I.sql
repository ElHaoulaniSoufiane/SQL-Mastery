/*
Problem: 1148. Article Views I
Link: https://leetcode.com/problems/article-views-i/

Object:
- Find all the authors that viewed at least one of their own articles.

Logic: 
- Compare author_id and viewer_id in the same row.
- If they match, the author viewed their own article
- use DISTINCT to avoid duplicate ids in the result
- Order the asecending by id

- Complexity:
- Time: O(n log n) - Because ORDER BY
- Space: O(1)
*/

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
