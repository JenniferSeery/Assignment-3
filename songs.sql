-- Create table songs - holds details of all songs in the database
CREATE TABLE songs 
(
  	'ID' varchar(2) NOT NULL,
	'Title' varchar(50) NOT NULL,
	'Artist' varchar(50) NOT NULL,
  	'Album' varchar(50) NOT NULL,
  	'Genre' varchar(50) NOT NULL
CONSTRAINT songs_PK PRIMARY KEY (ID)
);

-- Insert values into songs
INSERT INTO songs VALUES
		('01', 'Spit It Out', 'Slipknot', 'Slipknot', 'Heavy Metal');	
		('02', 'Freak On A Leash', 'Korn', 'Follow The Leader', 'Heavy Metal');
		('03', 'Chop Suey!', 'System Of A Down', 'Toxicity', 'Heavy Metal');
		('04','Warriors', 'Papa Roach', 'Infest ', 'Heavy Metal');
		('05','Down With The Sickness', 'Disturbed', 'The Sickness', 'Heavy Metal');
		('06','Mirrors', 'Justin Timberlake', 'Mirrors', 'Pop');
		('07','What Goes Around', 'Justin Timberlake', 'Mirrors', 'Pop');
		('08','Diana', 'One Direction', 'Midnight Memories', 'Pop');
		('09','Baby', 'Justin Bieber', 'Baby', 'Pop');
		('10','Party In The USA', 'Miley Cyrus', 'The Time Of Our Lives', 'Pop');
		('11','Wild Rover', 'The Dubliners', 'The Dubliners', 'Traditional');
		('12','Dirty Old Town', 'The Pogues', 'Red Roses For Me', 'Traditional');
		('13','Raglan Road', 'Luke Kelly', 'The Collection', 'Traditional');
		('14','Spancill Hill', 'The Dubliners', 'The Best Of', 'Traditional');
		('15','Grace ', 'Jim McCann', 'McCanned', 'Traditional');
		('16','Handsome', 'The Vaccines', 'Handsome Single', 'Indie');
		('17','Wetsuit', 'The Vaccines', 'The Vaccines', 'Indie');
		('18','Naive', 'The Kooks', 'Inside In/Inside Out', 'Indie');
		('19','Do I Wanna Know ?', 'Arctic Monkeys', 'AM', 'Indie');	
		('20','Take Me To Church', 'Hozier', 'Hozier', 'Indie');

-- Commit included to persist the data
commit;
