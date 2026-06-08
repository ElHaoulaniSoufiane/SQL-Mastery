/*
Problem: 1661. Average Time of Process per Machine
Link: https://leetcode.com/problems/average-time-of-process-per-machine/
Object:
- Calculate the average processing time for each machine.
Logic:
- Use INNER JOIN to pair each 'start' and 'end' activity for the same machine and process.
- Join condition start.machine_id = end.machine_id AND start.process_id = end.process_id
  matches each start event with its corresponding end event.
- Subtract start.timestamp from end.timestamp to get the duration of each process.
- Use AVG() to calculate the average processing time per machine.
- Use CAST to format the result to 3 decimal places.
- Complexity:
- Time:  O(n²)
- Space: O(n)
*/
SELECT end.machine_id, CAST(AVG(end.timestamp - start.timestamp) AS DECIMAL(10,3)) AS processing_time
FROM Activity end
INNER JOIN Activity start ON start.machine_id = end.machine_id AND start.process_id = end.process_id
WHERE start.activity_type = 'start' AND end.activity_type = 'end'
GROUP BY end.machine_id
