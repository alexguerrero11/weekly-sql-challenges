/* Exercise 1 - Workers With The Highest Salaries
Q: Find the titles of workers that earn the highest salary. 
Output the highest-paid title or multiple titles that share the highest salary. */

SELECT title.worker_title as best_paid_department
FROM worker
JOIN title 
    ON worker.worker_id = title.worker_ref_id
ORDER BY salary DESC
LIMIT 2;

/* Exercise 2 - Number Of Units Per Nationality
Q: Find the number of apartments per nationality that are owned by people under 30 years old.
Output the nationality along with the number of apartments. Sort records by the apartments count in descending order. */



/* Exercise 3 - Find the top 10 ranked songs in 2010
Q: What were the top 10 ranked songs in 2010?
Output the rank, group name, and song name but do not show the same song twice.
Sort the result based on the year_rank in ascending order. */

SELECT DISTINCT year_rank, group_name, song_name
FROM billboard_top_100_year_end
WHERE year = 2010
ORDER BY year_rank ASC
LIMIT 10;