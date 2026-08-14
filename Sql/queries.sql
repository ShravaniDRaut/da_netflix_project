CREATE DATABASE netflix_analysis;

USE netflix_analysis;

CREATE TABLE netflix (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director TEXT,
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

# 1. Total Movies vs TV Shows
SELECT type,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY type;

#. 2.Top 10 Countries with Most Content
SELECT country,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY country
ORDER BY Total_Content DESC
LIMIT 10;

# 3.Most Common Ratings
SELECT rating,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY rating
ORDER BY Total DESC;

# 4.Content Released Each Year
select release_year,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

# 5. Movies Added Each Year
SELECT year(str_to_date(date_added,'%M %D,%Y')) As Year_added,
COUNT(*) As Total_Content
FROM netflix_titles
group by Year_added
ORDER by Year_added;

# 6.Top 10 Directors with Most Content
SELECT  director,
COUNT(*) AS Total_Content
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director 
ORDER BY Total DESC
LIMIT 10;

# 7.count of movies and tv shows by rating 
SELECT type, rating,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY type,rating
oRDER BY Total_Content DESC;

# 8.Longest Movie on Netflix
SELECT movies,duration,
COUNT(*) AS Total_Content
FROM netflix_titles
WHERE type = "Movie"
ORDER BY durartion DESC
LIMIT 1;

# 9.Content Available in India
SELECT COUNT(*) AS India_Content
FROM netflix
WHERE country Like "%India";

# 10.Movies Released After 2020
 SELECT title,
 release_year
 FROM netflix_titles
 WHERE type ='Movies'
 AND release_year > 2020;
 
 # 11.Most Common Genre
 SELECT listed_in,
 COUNT(*) AS Total_content
 FROM netflix_titles
 GROUP BY listed_in 
 ORDER BY Total_Content DESC
 LIMIT 10;
 
 # 12.Total Content by Country and Type
 SELECT type,country,
 COUNT(*) AS Total_Content
 FROM netflix_titles
 GROUP BY country,type
 ORDER BY Total_Content DESC;
 
 # 13.TV Shows with More Than 5 Seasons
 SELECT title,
 duration
 FROM netflix_titles
 WHERE type='TV Show'
 AND duration LIKE '%Season%'
AND CAST(SUBSTRING_INDEX(duration, ' ', 1) AS UNSIGNED) > 5;

# 14.Top 5 Release Years with Highest Content
  SELECT release_year,
  COUNT(*) AS Total_Content
  FROM netflix_titles
  GROUP BY release_year
  ORDER BY Total_Content DESC
  LIMIT 5;
 
 # 15.Content Added in Last 5 Years
 SELECT YEAR(STR_TO_DATE(date_added,'%M %d,%Y')) AS Year_Added,
 COUNT(*) AS Total_Content 
 FROM netflix_titles
 GROUP BY Year_Added
 ORDER BY Year_Added ;
 
 # 16. Count of Content by Category Type
 SELECT type,
 COUNT(*)AS Total_Content
 FROM netflix_titles
 GROUP BY type
 ORDER BY Total_Content;

# 17.Top Actors Appearing on Netflix
SELECT cast,
COUNT(*) AS Total_Content
FROM netflix_titles
GROUP BY cast 
ORDER BY Total_Content DESC
LIMIT 10;

SHOW DATABASES;
USE netflix_analysis;

SHOW TABLES;

