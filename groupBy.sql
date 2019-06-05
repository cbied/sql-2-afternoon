-- Find a count of how many tracks there are per genre. Display the genre name with the count
SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
GROUP BY g.name


-- Find a count of how many tracks are the "Pop" genre and how many tracks are the "Rock" genre
SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;

-- Find a list of all artists and how many albums they have
SELECT COUNT(*), art.name
FROM album alb
JOIN artist art ON art.artist_id = alb.artist_id
GROUP BY art.name;
