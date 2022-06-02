-- 1. количество исполнителей в каждом жанре
SELECT g.name_genre, COUNT(sg.id_genre)
FROM singer_genre sg INNER JOIN genre g
ON sg.id_genre = g.id_genre 
GROUP BY g.name_genre;

--перечень имен альбомов с количеством треков, вошедших в альбомы 2019-2020 годов;
SELECT a.name_album, COUNT(pt.id_track) 
FROM track pt 
INNER JOIN album a 
ON pt.id_album = a.id_album 
AND a.year_album BETWEEN 2019 AND 2020
GROUP BY a.name_album ;

--2. количество треков, вошедших в альбомы 2019-2020 годов;
SELECT '2019-2020 year issue' yearIssue, COUNT(pt.id_track) 
FROM track pt 
INNER JOIN album a 
ON pt.id_album = a.id_album 
AND a.year_album BETWEEN 2019 AND 2020
GROUP BY yearIssue ;

--3. средняя продолжительность треков по каждому альбому;
SELECT a.name_album , AVG(pt.duration)
FROM track pt
INNER JOIN album a 
ON pt.id_album = a.id_album 
GROUP BY a.name_album ;

--4. все исполнители, которые не выпустили альбомы в 2020 году;
SELECT DISTINCT s.alias
FROM singer_album sa
INNER JOIN singer s
ON s.id_singer = sa.id_singer 
INNER JOIN album a 
ON sa.id_album = a.id_album 
AND sa.id_singer NOT IN 
(SELECT s.id_singer FROM album a2
INNER JOIN singer_album s ON a2.id_album = s.id_album 
WHERE a2.year_album = 2020)
ORDER BY s.alias;

--5. названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
SELECT c.name_collect, s.alias
FROM track t 
INNER JOIN album a 
ON t.id_album = a.id_album 
INNER JOIN singer_album sa
ON a.id_album = sa.id_album 
INNER JOIN singer s
ON s.id_singer = sa.id_singer 
INNER JOIN track_collect tc 
ON tc.id_track = t.id_track 
INNER JOIN collect c 
ON c.id_collect = tc.id_collect 
WHERE s.alias = 'Тони Беннет';

--6. название альбомов, в которых присутствуют исполнители более 1 жанра;
SELECT a.name_album FROM album a
INNER JOIN singer_album sa 
ON a.id_album = sa.id_album 
INNER JOIN  
(SELECT sg.id_singer, count(id_genre)
FROM singer_genre sg
GROUP BY sg.id_singer 
HAVING count(id_genre) > 1) AS sc
ON sc.id_singer = sa.id_singer ;

--7. наименование треков, которые не входят в сборники;
SELECT t.name_track 
FROM track_collect tc
RIGHT JOIN track t 
ON t.id_track = tc.id_track 
WHERE tc.id_track_collect IS Null;


--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
SELECT s.alias FROM track t 
INNER JOIN album a 
ON a.id_album = t.id_album 
INNER JOIN singer_album sa 
ON sa.id_album = a.id_album 
INNER JOIN singer s 
ON s.id_singer = sa.id_singer 
WHERE t.duration = (SELECT MIN(pb.duration)
FROM track pb);

--9.название альбомов, содержащих наименьшее количество треков.
SELECT a.name_album, COUNT(a.id_album) 
FROM album a
INNER JOIN track t1
ON t1.id_album = a.id_album 
GROUP BY a.id_album 
HAVING count(a.id_album) =
(SELECT min(s.c) FROM 
(SELECT t.id_album id_track, COUNT(t.id_track) c
FROM track t
GROUP BY t.id_album) s);
