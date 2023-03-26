INSERT INTO Genre(name)
VALUES 
	('Punk rock'),
	('Reggae'),
	('Drum&bass'),
	('Oldschool hip-hop'),
	('Trash metall'),
	('Trance'),
	('Deep house'),
	('Alice Cooper'),
	('Public enemy'),
	('Ramones'),
	('Max Romeo'),
	('Markus Shultz'),
	('The Exploited'),
	('Noisia'),
	('Onyx'),
	('Metallica'),
	('Pendulum'),
	('The Wailers');

INSERT INTO Album(name, year)
VALUES
	('Trash', 1989),
	('Fear of a Black Planet', 1990),
	('Bacdafucup', 1993),
	('Immersion', 2010),
	('Acid Eaters', 1993),
	('Master of Puppets', 1986),
	('Scream', 2012),
	('Brain Drain', 1989),
	('Majestic Warrioirs', 1991);

INSERT INTO Track(name, duration, album_id)
VALUES
	('House of Fire', 227, 1),
	('Why Trust You', 193, 1),
	('Bed of Nails', 220, 1),
	('Soebody to Love', 152, 5),
	('Surf City', 147, 5),
	('I Believe in Miracles', 220, 8),
	('Power to the People', 190, 2),
	('Fight the Power', 181, 2),
	('Bust Dat Ass', 48, 3),
	('Is This Love', 199, 9),
	('One Love', 150, 9),
	('No Woman No Cry', 125, 9),
	('Tarantula', 185, 4),
	('The Sun', 197, 7),
	('Nothing Else Matters', 245, 6);

INSERT INTO Compillation(name, year)
VALUES
	('Best of Alice Cooper', 2001),
	('Best of Onyx', 2005),
	('Best of the Wailers', 1995),
	('Best of Pendulum', 2015),
	('Best of Public Enemy', 2005),
	('Best of Ramones', 1992),
	('Best of Noisia', 2020),
	('Best of Oldschool Hip-Hop', 2001);

INSERT INTO genre_artist (genre_id, artist_id)
VALUES
	(1,1),
	(1,3),
	(1,6),
	(2,4),
	(2,11),
	(3,7),
	(3,10),
	(4,2),
	(4,8),
	(5,1),
	(5,9),
	(6,5),
	(7,5);

INSERT INTO artist_album (artist_id, album_id)
VALUES 
	(1,1),
	(2,2),
	(2,3),
	(3,5),
	(3,8),
	(5,7),
	(8,3),
	(9,6),
	(10,4),
	(4,9),
	(11,9);

INSERT INTO artist_album (artist_id)
VALUES 
	(6),
	(7);

INSERT INTO compillation_track (compillation_id, track_id)
VALUES
    (1,1),
    (1,3),
    (2,7),
    (2,8),
    (3,11),
    (4,13),
    (5,9),
    (3,12),
    (6,4),
    (6,5),
    (8,7),
    (8,9);