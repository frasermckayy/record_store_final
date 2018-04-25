DROP TABLE albums;
DROP TABLE artists;


CREATE TABLE artists
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null
);

CREATE TABLE albums
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  quantity INT,
  artist_id INT references artists(id)
);
