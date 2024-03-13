use sakila;

-- Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.
select film.title, count(inventory.film_id) as nb_copy
from inventory
inner join film on film.film_id = inventory.film_id
where film.title like 'Hunchback Impossible'
group by film.title;

-- List all films whose length is longer than the average length of all the films in the Sakila database.
select film.title, film.length, (select round(avg(film.length),2) from film) as avg_length
from film 
where film.length > (select avg(film.length) from film)
order by length desc;

-- Use a subquery to display all actors who appear in the film "Alone Trip".
select film.title, concat(actor.first_name, ' ',actor.last_name) as actor_fullname
from actor 
inner join film_actor on film_actor.actor_id = actor.actor_id
inner join film on film.film_id = film_actor.film_id
where film.title like "Alone Trip" ;

-- Bonus:
-- Sales have been lagging among young families, and you want to target family movies for a promotion. 
-- Identify all movies categorized as family films.


-- Retrieve the name and email of customers from Canada using both subqueries and joins. 
-- To use joins, you will need to identify the relevant tables and their primary and foreign keys.


-- Determine which films were starred by the most prolific actor in the Sakila database. 
-- A prolific actor is defined as the actor who has acted in the most number of films. 
-- First, you will need to find the most prolific actor and then use that actor_id to find the different films that he or she starred in.


-- Find the films rented by the most profitable customer in the Sakila database. 
-- You can use the customer and payment tables to find the most profitable customer, i.e., the customer who has made the largest sum of payments.


-- Retrieve the client_id and the total_amount_spent of those clients who spent more than the average of the total_amount spent by each client. 
-- You can use subqueries to accomplish this.