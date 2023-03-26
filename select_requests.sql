SELECT g.name, count(ga.artist_id)  FROM genre g  
JOIN genre_artist ga on g.id = ga.genre_id 
GROUP BY g.name
ORDER BY count(*) desc;
 
SELECT count(t.id) FROM track t 
JOIN album a ON a.id = t.album_id
WHERE a.year  BETWEEN 2010 AND 2012;

SELECT a.name, AVG(t.duration) FROM album a 
JOIN track t ON a.id = t.album_id 
GROUP BY a.name;
 
SELECT a.name FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id 
LEFT JOIN album a2 ON a2.id = aa.album_id 
WHERE a2.year != 2010 or a2.year IS NULL
GROUP BY a.name;
 
SELECT DISTINCT c.name FROM compillation c 
JOIN compillation_track ct ON c.id = ct.compillation_id
JOIN track t ON t.id = ct.track_id
JOIN album a ON a.id = t.album_id
JOIN artist_album aa ON a.id = aa.album_id
JOIN artist a2 ON a2.id = aa.artist_id
WHERE a2.name iLIKE '%Ramones%';
 
SELECT a.name FROM album a 
JOIN artist_album aa ON a.id = aa.album_id 
JOIN artist a2 ON a2.id = aa.artist_id 
JOIN genre_artist ga ON a2.id = ga.artist_id 
JOIN genre g ON g.id = ga.genre_id
GROUP BY a.name
HAVING
	count(DISTINCT g.id) > 1;

SELECT t.name FROM track t
LEFT JOIN compillation_track ct ON t.id = ct.track_id
WHERE ct.compillation_id IS NULL;
 
SELECT a.name FROM artist a 
JOIN artist_album aa ON a.id = aa.artist_id 
JOIN album a2 ON a2.id = aa.album_id 
JOIN track t ON t.album_id = a2.id 
WHERE 
	duration = (SELECT MIN(duration) FROM track);

SELECT a.name FROM album a
JOIN track t ON t.album_id = a.id
GROUP BY a.name 
HAVING 
	count(t.id) = (SELECT min(t.id) FROM track t);