CREATE TABLE IF NOT EXISTS Genre (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) UNIQUE NOT NULL 
);

CREATE TABLE IF NOT EXISTS Artist (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL  
);

CREATE TABLE IF NOT EXISTS Album (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL , 
    year INTEGER CHECK (year > 1900) 
);

CREATE TABLE IF NOT EXISTS Track (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL ,
    duration INTEGER CHECK (duration < 240),
    album_id INTEGER NOT NULL REFERENCES Album(id)
);

CREATE TABLE IF NOT EXISTS Compillation (
    id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL ,
    year INTEGER (year > 1900) 
);

CREATE TABLE IF NOT EXISTS Genre_artist (
    id SERIAL PRIMARY KEY,
    genre_id INTEGER NOT NULL REFERENCES Artist(id),
    artist_id INTEGER NOT NULL REFERENCES Genre(id)
);

CREATE TABLE IF NOT EXISTS Artist_album (
    id SERIAL PRIMARY KEY, 
    artist_id INTEGER REFERENCES Album(id),
    album_id INTEGER REFERENCES Artist(id)
);

CREATE TABLE IF NOT EXISTS Compillation_track (
    id SERIAL PRIMARY KEY,
    compillation_id INTEGER REFERENCES Track(id),
    track_id INTEGER REFERENCES Compillation(id)
)