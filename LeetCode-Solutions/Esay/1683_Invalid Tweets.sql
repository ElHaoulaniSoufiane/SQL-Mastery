/*
Problem: 1683. Invalid Tweets
Link: https://leetcode.com/problems/invalid-tweets/

Object:
- Find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Logic: 
- Use LENGTH() to count the numbre of charchter in the content column
- Filter row where LENGTH(content) > 15 using where clause
- Return only the tweet_id of the invalid tweets

- Complexity:
- Time: O(n) - Full Table scan
- Space: O(1)
*/

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15
