CREATE TABLE artistas (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    debut_year INTEGER,
    genre TEXT
);

CREATE TABLE albuns (
    id INTEGER PRIMARY KEY,
    artist_id INTEGER NOT NULL,
    title TEXT NOT NULL,
    release_year INTEGER,
    sales_millions REAL,

    FOREIGN KEY (artist_id)
        REFERENCES artistas(id)
);

CREATE TABLE charts (
    id INTEGER PRIMARY KEY,
    album_id INTEGER NOT NULL,
    peak_position INTEGER,
    weeks_on_chart INTEGER,

    FOREIGN KEY (album_id)
        REFERENCES albuns(id)
);


INSERT INTO artistas (id, name, debut_year, genre) VALUES
(1, 'Lady Gaga', 2008, 'Pop'),
(2, 'Frank Ocean', 2011, 'R&B'),
(3, 'Madonna', 1982, 'Pop'),
(4, 'Kendrick Lamar', 2012, 'Hip-Hop'),
(5, 'Beyonce', 2003, 'Pop/R&B'),
(6, 'Lana Del Rey', 2010, 'Alternative'),
(7, 'Charli XCX', 2008, 'Pop/Hyperpop'),
(8, 'Billie Eilish', 2015, 'Alternative/Pop');

INSERT INTO albuns (
    id,
    artist_id,
    title,
    release_year,
    sales_millions
) VALUES
(1, 1, 'The Fame', 2008, 15.0),
(2, 1, 'Born This Way', 2011, 6.0),
(3, 2, 'Channel Orange', 2012, 1.0),
(4, 2, 'Blonde', 2016, 1.2),
(5, 3, 'Like a Virgin', 1984, 21.0),
(6, 3, 'Confessions on a Dance Floor', 2005, 10.0),
(7, 4, 'Good Kid, M.A.A.D City', 2012, 4.0),
(8, 4, 'DAMN.', 2017, 4.5),
(9, 5, 'Dangerously in Love', 2003, 11.0),
(10, 5, 'Lemonade', 2016, 3.0),
(11, 5, 'Renaissance', 2022, 1.5),
(12, 6, 'Born to Die', 2012, 12.0),
(13, 6, 'Norman Fucking Rockwell!', 2019, 1.0),
(14, 7, 'Crash', 2022, 0.5),
(15, 7, 'BRAT', 2024, 0.8),
(16, 8, 'When We All Fall Asleep, Where Do We Go?', 2019, 9.0),
(17, 8, 'Hit Me Hard and Soft', 2024, 1.2);

INSERT INTO charts (
    id,
    album_id,
    peak_position,
    weeks_on_chart
) VALUES
(1, 1, 2, 175),
(2, 2, 1, 110),
(3, 3, 7, 95),
(4, 4, 1, 340),
(5, 5, 1, 108),
(6, 6, 1, 45),
(7, 7, 2, 550),
(8, 8, 1, 260),
(9, 9, 1, 102),
(10, 10, 1, 85),
(11, 11, 1, 60),
(12, 12, 2, 530),
(13, 13, 3, 40),
(14, 14, 1, 12),
(15, 15, 3, 65),
(16, 16, 1, 220),
(17, 17, 2, 50);