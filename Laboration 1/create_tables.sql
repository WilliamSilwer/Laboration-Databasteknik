CREATE TABLE albums (
    al_id INT GENERATED ALWAYS AS IDENTITY,
    al_title VARCHAR(80) NOT NULL,
    al_release_year INT NOT NULL CHECK (al_release_year > 0),
    CONSTRAINT pk_albums PRIMARY KEY (al_id)
);

CREATE TABLE songs (
    so_id INT GENERATED ALWAYS AS IDENTITY,
    so_title VARCHAR(80) NOT NULL,
    so_release_year INT NOT NULL CHECK (so_release_year > 0),
    al_id INT,
    CONSTRAINT pk_songs PRIMARY KEY (so_id),
    CONSTRAINT fk_songs_albums FOREIGN KEY (al_id) REFERENCES albums(al_id)
);

CREATE TABLE artists (
    ar_id INT GENERATED ALWAYS AS IDENTITY,
    ar_name VARCHAR(80) NOT NULL,
    ar_birth_year INT,
    ar_country VARCHAR(80),
    CONSTRAINT pk_artists PRIMARY KEY (ar_id)
);

CREATE TABLE songs_artists (
    so_id INT,
    ar_id INT,
    CONSTRAINT pk_songs_artists PRIMARY KEY (so_id, ar_id),
    CONSTRAINT fk_songs_artists_songs FOREIGN KEY (so_id) REFERENCES songs(so_id),
    CONSTRAINT fk_artists_songs_artists FOREIGN KEY (ar_id) REFERENCES artists(ar_id)
);