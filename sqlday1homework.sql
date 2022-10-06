-- QUESTION 1: How many actors are there with the last name 'Wahlberg'? 
-- ANSWER: 2
select count(last_name)
from actor
where last_name = 'Wahlberg';

-- QUESTION 2: How many payments were made between $3.99 and $5.99?
-- ANSWER: 3,273   ---> ? Cannot come up with 5,567 no matter how many ways I search ?

select count(payment)
from payment 
where amount between 3.99 and 5.99;


-- QUESTION 3: What film does the store have the most of? (search inventory)
-- ANSWER: film_id = 200, count = 9, title = Curtain Videotape

select film_id, count(film_id)
from inventory
group by film_id
order by count desc;

select title, film_id
from film;

-- QUESTION 4: How many customers have the last name 'William'?
-- ANSWER: 0
select count(last_name) from customers where last_name = 'William';

-- QUESTION 5: What store employee (get the id) sold the most rentals?
-- ANSWER: staff_id = 1, count = 8040

select count(staff_id), staff_id
from rental
group by staff_id;

-- QUESTION 6: How many different district names are there?
-- ANSWER: 378

select district, count(district) from address group by district; 

-- QUESTION 7: What film has the most actors in it? (use film_actor table and get film_id) 
-- ANSWER: film_id = 508

select count(actor_id), film_id
from film_actor
group by film_id
order by count desc;

-- QUESTION 8: From store_id 1, how many customers have a last name ending with 'es'? (use customer table)
-- ANSWER: 13

select customer_id, last_name
from customer 
where last_name like '%_es' and store_id = '1'
group by customer_id;

-- QUESTION 9: How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
-- ANSWER: 3 - 4.99, 6.99 and 8.99
select amount, count(amount>250)
from payment 
where customer_id between 380 and 430
group by amount;


-- QUESTION 10: Within the film table, how many rating categories are there? And what rating has the most movies total? 
-- ANSWER: 5 categories, PG-13 has the most at 223 films
select count(rating), rating
from film
group by rating






