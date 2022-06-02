-- отдельный скрипт для создания таблиц
CREATE TABLE IF NOT EXISTS genre(
	id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	id_singer SERIAL PRIMARY KEY,
	name_singer VARCHAR(50) NULL,
	surname VARCHAR(50) NULL,
	alias VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(150) NOT NULL,
	year_album INTEGER
);

CREATE TABLE IF NOT EXISTS collect (
	id_collect SERIAL PRIMARY KEY,
	name_collect VARCHAR(150) NOT NULL,
	year_collect INTEGER
);


CREATE TABLE IF NOT EXISTS track(
	id_track SERIAL PRIMARY KEY,
	name_track VARCHAR(150),
	duration INTEGER, --количество секунд
	id_album INTEGER REFERENCES album (id_album)
);

CREATE TABLE IF NOT EXISTS track_collect(
	id_track_collect SERIAL PRIMARY KEY,
	id_track INTEGER REFERENCES track (id_track),
	id_collect INTEGER REFERENCES collect (id_collect)
);


CREATE TABLE IF NOT EXISTS singer_album(
	id_singer_album SERIAL PRIMARY KEY,
	id_singer INTEGER REFERENCES singer (id_singer),
	id_album INTEGER REFERENCES album (id_album)
);

CREATE TABLE IF NOT EXISTS singer_genre(
	id_singer_genre SERIAL PRIMARY KEY,
	id_singer INTEGER REFERENCES singer (id_singer),
	id_genre INTEGER REFERENCES genre (id_genre)
);