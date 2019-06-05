-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
SELECT * FROM invoice i 
JOIN invoice_line l 
ON i.invoice_id = l.invoice_id
WHERE unit_price > 0.99

-- Get the invoice_date, customer first_name and last_name, and total from all invoices
SELECT i.invoice_date, i.total, c.first_name, c.last_name
FROM invoice i
JOIN customer c
ON c.customer_id = i.customer_id

-- Get the customer first_name and last_name and the support rep's first_name and last_name from all customers.
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id

-- Get the album title and the artist name from all albums
SELECT alb.title, art.name
FROM album alb
JOIN artist art
ON alb.artist_id = art.artist_id

-- Get all playlist_track track_ids where the playlist name is Music
SELECT t.track_id
FROM playlist p
JOIN playlist_track t
ON p.playlist_id = t.playlist_id
WHERE p.name = 'Music'

-- Get all track names for playlist_id 5
SELECT t.name
FROM track t
JOIN playlist_track p
ON t.track_id = p.track_id
WHERE p.playlist_id = 5

-- Get all track names and the playlist name that they're on ( 2 joins )
SELECT t.name, p.name
FROM track t
JOIN playlist_track pl ON t.track_id = pl.track_id
JOIN playlist p ON p.playlist_id = pl.playlist_id

-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins )
SELECT t.name, alb.title
FROM track t
JOIN album alb ON t.album_id = alb.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk'
