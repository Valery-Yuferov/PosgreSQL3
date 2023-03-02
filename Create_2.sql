create table if not exists genre (
	genre_id integer primary key,
	genre_title varchar(40)
);




create table if not exists artist (
	artist_id integer primary key,
	artist_name varchar(40) unique
);




create table if not exists album (
	album_id integer primary key,
	album_title varchar(40),
	album_year integer not null,
	album_artist varchar(40)
);






create table if not exists track (
	track_id integer primary key,
	track_name varchar(40),
	track_duration numeric,
	track_album_name varchar(40)
);





create table if not exists collection (
	collection_id integer primary key,
	collection_name varchar(40),
	collection_year integer not null
);




create table if not exists genre_artist (
	genre_art_id integer references genre(genre_id),
	artist_gen_name varchar(40) references artist(artist_name)
);





create table if not exists artist_album (
	artist_id integer references artist(artist_id),
	album_id integer references album(album_id)
);




create table if not exists collection_track (
	collection_id integer references collection(collection_id),
	track_id integer references track(track_id)
);






