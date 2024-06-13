-- Comments in SQL Start with dash-dash --
SELECT app_name  from analytics WHERE id = 1880;
SELECT id, app_name FROM analytics WHERE last_updated ='2018-08-01';
SELECT category, count(*) FROM analytics GROUP BY category; 
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;
SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;
SELECT category, avg(rating) AS avg_rating FROM analytics GROUP BY category ORDER BY avg(rating) desc;
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1; 
SELECT app_name, min_installs,rating FROM analytics WHERE min_installs<=50 AND rating IS NOT NULL ORDER BY rating desc;
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 1000;
SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN .10 AND 1 ORDER BY reviews desc lIMIT 10;
SELECT app_name, last_updated FROM analytics ORDER BY last_updated LIMIT 1 ;
SELECT app_name, price FROM analytics ORDER BY price desc LIMIT 1;
SELECT sum(reviews) AS sum_reviews FROM analytics;
SELECT category, count(category) AS cat_count FROM analytics GROUP BY category HAVING count(category) >300;
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs>=100000 ORDER BY min_installs/reviews desc LIMIT 1;