--- таблица жанров
INSERT INTO public.genre (name_genre) VALUES('Блюз');
INSERT INTO public.genre (name_genre) VALUES('Джаз');
INSERT INTO public.genre (name_genre) VALUES('Рок');
INSERT INTO public.genre (name_genre) VALUES('Поп');
INSERT INTO public.genre (name_genre) VALUES('Панк');

--- таблица исполнителей
--блюз
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Томас', 'Уээйтс', 'Thomas Waits');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Эрик', 'Клаптон', 'Clapton');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Джеймс Маршал', 'Хендрикс', 'Jimi Hendrix');

--джаз
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Луи', 'Армстронг', 'Louis Armstrong');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Дюк', 'Эллингтон', 'Duke Ellington');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('', '', 'The Beatles');

--рок
INSERT INTO public.singer (name_singer, surname, alias) VALUES('', '', 'Muse');

--поп
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Madonna ', 'Ciccone', 'Madonna');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Стефани', 'Джерамотта', 'Lady Gaga');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('Энтони', 'Бендетто', 'Тони Беннет');

--панк
INSERT INTO public.singer (name_singer, surname, alias) VALUES('', '', 'Green Day');
INSERT INTO public.singer (name_singer, surname, alias) VALUES('', '', 'blink-182');


--- таблица альбомов
--Thomas Waits блюз
INSERT INTO public.album (name_album, year_album) VALUES('Closing Time', 1973);
INSERT INTO public.album (name_album, year_album) VALUES('The Heart of Saturday Night', 1974);
INSERT INTO public.album (name_album, year_album) VALUES('Bad as Me', 2011);

--Леди Гага поп
INSERT INTO public.album (name_album, year_album) VALUES('Cheek to Cheek', 2011);

--The Beatles рок
INSERT INTO public.album (name_album, year_album) VALUES('Yellow Submarine', 1969);

--Muse рок
INSERT INTO public.album (name_album, year_album) VALUES('Live at Rome Olympic Stadium', 2018);

--blink-182 панк
INSERT INTO public.album (name_album, year_album) VALUES('Dogs Eating Dogs', 2012);
INSERT INTO public.album (name_album, year_album) VALUES('Nine', 2019);

--таблица сборников
--blink-182 
INSERT INTO public.collect (name_collect, year_collect) VALUES('Greatest Hits', 2005);
INSERT INTO public.collect (name_collect, year_collect) VALUES('Icon', 2013);

--muse
INSERT INTO public.collect (name_collect, year_collect) VALUES('Random 1—8', 2000);
INSERT INTO public.collect (name_collect, year_collect) VALUES('Muscle Museum', 1999);

--the beatles
INSERT INTO public.collect (name_collect, year_collect) VALUES('Love', 2006);
INSERT INTO public.collect (name_collect, year_collect) VALUES('Let It Be… Naked', 2020);

--леди гага
INSERT INTO public.collect (name_collect, year_collect) VALUES('Dawn of Chromatica', 2021);
INSERT INTO public.collect (name_collect, year_collect) VALUES('The Remix', 2018);

--таблица треков
INSERT INTO public.track (name_track, duration, id_album) VALUES('My Alice', 4829, 1);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Let Get It Started', 4529, 2);
INSERT INTO public.track (name_track, duration, id_album) VALUES('BED', 6829, 3);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Lava', 3829, 4);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Footprints MY', 6629, 5);
INSERT INTO public.track (name_track, duration, id_album) VALUES('River Flows In You', 4829, 6);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Hallucination', 2342, 7);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Give It Away', 6543, 8);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Light Switch', 5555, 2);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Jalebi Baby', 3333, 1);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Bones', 4444, 5);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Lonely', 6666, 6);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Said and Done', 7777, 8);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Yesterday', 8888, 2);
INSERT INTO public.track (name_track, duration, id_album) VALUES('The Muse', 5674, 4);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Alice my', 2345, 7);
INSERT INTO public.track (name_track, duration, id_album) VALUES('One МОЙ', 6536, 3);
INSERT INTO public.track (name_track, duration, id_album) VALUES('Along', 5436, 6);
INSERT INTO public.track (name_track, duration, id_album) VALUES('I am not in collect', 2342, 3);
 
 -- треки в сборниках
INSERT INTO public.track_collect (id_track, id_collect) VALUES(1, 1);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(2, 2);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(3, 3);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(4, 4);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(5, 5);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(6, 6);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(7, 7);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(8, 8);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(9, 8);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(10, 1);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(11, 2);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(12, 3);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(13, 4);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(14, 5);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(15, 6);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(16, 7);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(17, 8);
INSERT INTO public.track_collect (id_track, id_collect) VALUES(18, 5);


--исполнители в жанрах
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(1, 1);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(2, 1);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(3, 1);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(4, 2);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(5, 2);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(6, 2);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(7, 3);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(8, 4);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(9, 4);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(10, 5);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(11, 5);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(12, 4);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(2, 4);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(2, 5);
INSERT INTO public.singer_genre (id_singer, id_genre) VALUES(3, 3);

--исполнители в альбомах
INSERT INTO public.singer_album (id_singer, id_album) VALUES(1, 1);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(2, 2);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(3, 3);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(4, 4);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(5, 5);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(6, 6);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(7, 7);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(8, 8);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(9, 1);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(10, 2);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(11, 3);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(12, 4);
INSERT INTO public.singer_album (id_singer, id_album) VALUES(1, 5);
