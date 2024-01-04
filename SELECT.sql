2.



SELECT name,times FROM track 
GROUP BY name,times 
HAVING times = (SELECT max(times) FROM track) 
ORDER BY name;

SELECT name, times FROM track
WHERE times > 210;

SELECT name, year_of_relase FROM collection
WHERE year_of_relase BETWEEN 2018 AND 2020;

SELECT name FROM musicain
WHERE NOT name LIKE '%% %%';

SELECT name FROM track 
WHERE name iLIKE '%my%' OR name LIKE '%мой%'




3.

SELECT g.name, count(m.name)
FROM genre g
LEFT JOIN genresmusicain gm ON g.id = gm.genre_id
LEFT JOIN musicain m ON gm.musicain_id  = m.id
GROUP BY g.name
ORDER BY count(m.id) DESC

SELECT count(t.name) FROM track t
JOIN album a ON a.id = t.album_id 
WHERE  year_of_realese = 2019 OR year_of_realese = 2020;

SELECT a.name, avg(times) FROM track t 
JOIN album a ON a.id = t.album_id
GROUP BY a.name
ORDER BY avg(times) DESC;

SELECT m.name FROM musicain m 
WHERE m.name NOT IN (
SELECT DISTINCT m.name FROM musicain m
JOIN musicainalbum ma  ON m.id = ma.musicain_id 
JOIN album a  ON a.id = ma.album_id  
WHERE a.year_of_realese = 2020)
ORDER BY m.name;

SELECT DISTINCT c.name FROM collection c 
LEFT JOIN collectiontrack ct ON c.id = ct.collection_id 
LEFT JOIN track t ON t.id = ct.track_id 
LEFT JOIN album a ON a.id = t.album_id 
LEFT JOIN musicainalbum ma ON a.id = ma.album_id 
LEFT JOIN musicain m ON m.id = ma.musicain_id 
WHERE m.name LIKE '%%Nirvana%%'
ORDER BY c.name DESC;



4.

SELECT a.name FROM album a 
LEFT JOIN musicainalbum ma ON ma.album_id = a.id 
LEFT JOIN musicain m ON ma.musicain_id = m.id 
LEFT JOIN genresmusicain gm ON gm.musicain_id = m.id 
LEFT JOIN genre g ON gm.genre_id = g.id 
GROUP BY a.name
HAVING count(DISTINCT g.name)> 1
ORDER BY a.name;



SELECT t.name FROM track t
LEFT JOIN collectiontrack ct ON t.id = ct.track_id
WHERE ct.track_id IS NULL


SELECT m.name, t.times FROM track t 
LEFT JOIN album a ON t.album_id = a.id
LEFT JOIN musicainalbum ma ON ma.musicain_id = a.id
LEFT JOIN musicain m  ON ma.musicain_id = m.id 
GROUP BY m.name, t.times 
HAVING t.times =(SELECT min(times) FROM track)
ORDER BY m.name;


SELECT DISTINCT a.name FROM album a 
LEFT JOIN track t ON t.album_id = a.id 
WHERE t.album_id IN (
    SELECT album_id
    FROM track
    GROUP BY album_id
    HAVING count(id) = (
        SELECT count(id)
        FROM track
        GROUP BY album_id
        ORDER BY count
        LIMIT 1
    )
)
ORDER BY a.name