/* Exercise 01 - Classify results into buckets
How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? 
Return the name and monthly maintenance of the facilities in question.
 */

SELECT
	name,
	(CASE
		WHEN monthlymaintenance > 100 THEN 'expensive'
		ELSE 'cheap'
	END) as Cost
FROM cd.facilities;

/* Exercise 02 - Working with dates
How can you produce a list of members who joined after the start of September 2012? 
Return the memid, surname, firstname, and joindate of the members in question.
 */

SELECT
	memid,
	surname,
	firstname,
	joindate
FROM cd.members
WHERE joindate >= '2012-09-01 00:00:00';


/* Exercise 03 - Retrieve the start times of members' bookings
How can you produce a list of the start times for bookings by members named 'David Farrell'?
 */

SELECT starttime
FROM cd.bookings
LEFT JOIN cd.members ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell';