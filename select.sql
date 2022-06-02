-- selects для первого задания
--название и год выхода альбомов, вышедших в 2018 году;
--select * from FROM public.album where year_album = 2018; 
SELECT name_album, year_album FROM public.album WHERE year_album = 2018;

--название и продолжительность самого длительного трека
SELECT name_track, duration FROM public.track WHERE duration in (select max(duration) from public.track);

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name_track, duration FROM public.track  WHERE duration >= 210; -- 3,5 минуты = 210 секунд

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT  name_collect, year_collect FROM public.collect  WHERE year_collect BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова
SELECT id_singer, name_singer, surname, alias FROM public.singer where alias not like '% %';

--название треков, которые содержат слово "мой"/"my".
SELECT id_track, name_track, duration, id_album FROM public.track  where upper(name_track) like '%MY%' or upper(name_track) like '%МОЙ%';
