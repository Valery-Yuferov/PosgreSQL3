
-- 1. Количество исполнителей в каждом жанре.

select genre_title, count(genre_id) from genre g
join genre_artist ga on g.genre_id = ga.genre_art_id
group by genre_title


-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.

select count(album_title) from album a
join track t on a.album_title = t.track_album_name
where album_year >= '2019' and album_year <= '2020'


-- 3. Средняя продолжительность треков по каждому альбому.

select album_title, avg(track_duration) from track t
join album a on t.track_album_name = a.album_title
group by album_title


-- 4. Все исполнители, которые не выпустили альбомы в 2020 году.

select artist_name from artist a 
join artist_album aa on a.artist_id = aa.album_id
join album al on al.album_id = aa.artist_id 
where album_year != '2020'
group by artist_name


-- 5. Названия сборников, в которых присутствует конкретный исполнитель (Пол Маккартни).

select collection_name from collection c 
join collection_track ct on c.collection_id = ct.collection_id 
join track t on ct.track_id = t.track_id
join album a on t.track_id = a.album_id
join artist_album aa on aa.album_id = a.album_id
join artist ar on aa.artist_id = ar.artist_id
where artist_name = 'Пол Маккартни'
group by collection_name


-- 6. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.

select album_title from album a 
join artist_album aa on a.album_id = aa.album_id 
join artist ar on aa.artist_id = ar.artist_id 
join genre_artist ga on ar.artist_id = ga.genre_art_id 
join genre g on g.genre_id = ga.genre_art_id 
group by album_title 
having count(genre_title) > 1


-- 7. Наименования треков, которые не входят в сборники.

select track_name from track t
left join collection_track ct on t.track_id = ct.track_id
where collection_id is null


-- 8. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.

select artist_name, track_duration from track t
join album a on t.track_album_name = a.album_title
join artist_album aa on aa.album_id = a.album_id
join artist ar on aa.artist_id = ar.artist_id 
where track_duration = (select min(track_duration) from track)


-- 9. Названия альбомов, содержащих наименьшее количество треков.

select min(track_album_name), 
count(track_name) as count
from track
group by track_album_name
order by count
limit 2



 