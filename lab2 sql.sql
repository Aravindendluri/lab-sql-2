-- Select all the actors with the first name ‘Scarlett’.
select *
from sakila.actor
where first_name = 'Scarlett';
-- 2.
-- Select all the actors with the last name ‘Johansson’.
select *
from sakila.actor
where last_name = 'Johansson';
--3
select count(return_date) as available 
from sakila.rental;
--4
---- How many films have been rented?
select sum(case when return_date is null then 1 else 0 end) as 'rented'
from sakila.rental;

-- 5 What is the shortest and longest rental period?

SELECT min(rental_duration) as sortest_rental_period, max(rental_duration) as longest_rental_period from sakila.film;
6.
-- What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) as max_duration,
min(length) as min_duration
from sakila.film;
--7
what is the average movie duration expressed in format(hours,minutes)?
-- 8.
-- what's the average movie duration expressed in format (hours, minutes)?
select floor(avg(length)/60) as hours,
avg(length)%60 as minutes
from sakila.film;
--9 How many movies longer than 3 hours?
select count(length) from sakila.film 
where length > 180;
- 10.
-- Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
select concat(lower(first_name),'.',lower(last_name), '@sakilacustomer.org') as 'concat' 
from sakila.customer;
11.
-- What's the length of the longest film title?
-- if the question is about the longest duration of the film then: 
select * from sakila.film
order by length desc
limit 1;
select 'the length of the longest film title is 185 minutes';
-- or
select concat('the length of the longest film title is:', max(length), ' minutes') as the_length_of_the_longest_film_title
from sakila.film;

-- if the question is about the longest film according to the number of letters then: 
select max(length(title)) from sakila.film;
select title from sakila.film
where length(title)=27;








