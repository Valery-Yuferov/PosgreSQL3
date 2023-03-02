insert into genre
values	(1, 'рок'),
		(2, 'рок-н-ролл'),
		(3, 'поп'),
		(4, 'русский рок'),
		(5, 'русский поп');
	
	
insert into artist
values	(1, 'Фредди Меркьюри'),
		(2, 'Элвис Пресли'),
		(3, 'Пол Маккартни'),
		(4, 'Робби Уильямс'),
		(5, 'Майкл Джексон'),	
		(6, 'Шевчук'),
		(7, 'Макаревич'),
		(8, 'Филипп Киркоров'),
		(9, 'МакSим'),
		(10, 'Полина Гагарина');		
	
	
insert into album
values	(1, 'Back To The Light', 1992, 'Фредди Меркьюри'),
		(2, 'My Love', 1956, 'Элвис Пресли'),
		(3, 'Egypt Station', 2018, 'Пол Маккартни'),
		(4, 'The Christmas Present', 2019, 'Робби Уильямс'),
		(5, 'Invincible', 2001, 'Майкл Джексон'),	
		(6, 'Творчество в пустоте', 2021, 'Шевчук'),
		(7, 'Идиш Джаз 3', 2022, 'Макаревич'),
		(8, 'Ты, ты, ты', 1991, 'Филипп Киркоров'),
		(9, 'Галя ходи', 2018, 'Шевчук'),
		(10, 'Вдох', 2020, 'Полина Гагарина');

	
insert into track
values	(1, 'Living on My Own', 3.15, 'Back To The Light'),
		(2, 'My Love Is Dangerous', 2.20, 'Back To The Light'),
		(3, 'Opening Station', 3.50, 'Egypt Station'),
		(4, 'My Love', 4.12, 'My Love'),
		(5, 'You Are My Life', 4.33, 'Invincible'),	
		(6, 'Rudolph', 3.40, 'The Christmas Present'),
		(7, 'Муха', 6.56, 'Творчество в пустоте'),
		(8, 'Feat', 4.43, 'Идиш Джаз 3'),
		(9, 'Борщевик', 5.07, 'Творчество в пустоте'),
		(10, 'Come On to Me', 3.32, 'Egypt Station'),
		(11, 'The Lost Children', 2.56, 'Invincible'),
		(12, 'Best Christmas Ever', 4.27, 'The Christmas Present'),
		(13, 'Mahzel', 2.35, 'Идиш Джаз 3'),	
		(14, 'Весна', 3.08, 'Творчество в пустоте'),
		(15, 'Ты, ты, ты', 4.36, 'Ты, ты, ты'),
		(16, 'Heartbreaker', 5.10, 'Invincible'),
		(17, 'Privacy', 5.05, 'Invincible'),
		(18, 'Хор', 4.47, 'Творчество в пустоте'),
		(19, 'Happy with You', 3.34, 'Egypt Station'),	
		(20, 'Альтернатива', 4.29, 'Творчество в пустоте');
	

insert into collection
values	(1, 'Collection_1', 2014),
		(2, 'Collection_2', 2015),
		(3, 'Collection_3', 2016),
		(4, 'Collection_4', 2017),
		(5, 'Collection_5', 2018),	
		(6, 'Collection_6', 2019),
		(7, 'Collection_7', 2020),
		(8, 'Collection_8', 2021);

	
insert into genre_artist
values	(1, 'Фредди Меркьюри'),
		(2, 'Элвис Пресли'),
		(2, 'Пол Маккартни'),
		(3, 'Робби Уильямс'),
		(3, 'Майкл Джексон'),	
		(4, 'Шевчук'),
		(4, 'Макаревич'),
		(5, 'Филипп Киркоров'),
		(4, 'Шевчук'),
		(5, 'МакSим'),
		(5, 'Полина Гагарина');


insert into artist_album
values	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),	
		(6, 6),
		(7, 7),
		(8, 8),
		(6, 9),
		(10,10);	
	
	
insert into collection_track
values	(1, 1),
		(2, 2),
		(3, 3),
		(4, 4),
		(5, 5),	
		(6, 6),
		(7, 7),
		(8, 8),
		(5, 7),
		(5, 8),
		(1, 3),
		(2, 4),
		(3, 6),	
		(3, 7);	
	


