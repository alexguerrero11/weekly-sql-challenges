/* Exercise 01
How can you produce a list of facilities that charge a fee to members? */

SELECT * 
FROM cd.facilities 
WHERE membercost > '0';

/* Exercise 02
How can you produce a list of all facilities with the word 'Tennis' in their name? */

SELECT * 
FROM cd.facilities 
WHERE name LIKE '%Tennis%';

/* Exercise 03
How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator. */

SELECT *
FROM cd.facilities
WHERE facid IN (1,5);

/* Exercise 04
Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
Output all details related to retrieved records. */

SELECT *
FROM lyft_drivers
WHERE yearly_salary <= 30000 
    OR yearly_salary >= 70000;

/* Exercise 05
Count the number of movies that Abigail Breslin was nominated for an oscar. */

SELECT count(*)
FROM oscar_nominees
WHERE nominee = 'Abigail Breslin';