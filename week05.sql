/* Exercise 01 - Count the number of expensive facilities
Produce a count of the number of facilities that have a cost to guests of 10 or more. */

SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10;

/* Exercise 02 - Count the number of recommendations each member makes.
Produce a count of the number of recommendations each member has made. 
Order by member ID. */

SELECT recommendedby,
	COUNT(*)
FROM cd.members
WHERE recommendedby IS NOT NULL
GROUP BY recommendedby
ORDER BY recommendedby;

/* Exercise 03 - List facilities with more than 1000 slots booked
Produce a list of facilities with more than 1000 slots booked. 
Produce an output table consisting of facility id and slots, sorted by facility id. */

/* Attempt one - used a subquery*/ 
SELECT *
FROM (SELECT facid,
	SUM(slots)
FROM cd.bookings
GROUP BY facid
ORDER BY facid) as table1
WHERE sum >= 1000;

/* Attempt two - used HAVING feature */
SELECT facid,
	SUM(slots)
FROM cd.bookings
GROUP BY facid
HAVING sum(slots) > 1000
ORDER BY facid;