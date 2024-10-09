-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

DROP TABLE IF EXISTS instruments;

DROP TABLE IF EXISTS musicians;

DROP TABLE IF EXISTS bands;

drop table if exists musicians_instruments;

CREATE TABLE bands (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100)
);

CREATE TABLE musicians (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  brand_id integer,
  constraint band_fk FOREIGN KEY  (brand_id) references brand(id) on delete CASCADE


);

CREATE TABLE instruments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type VARCHAR(100) NOT NULL
);

CREATE TABLE musicians_instruments (
    musician_id INTEGER ,
    instrument_id INTEGER,
    constraint musician_instruments_fk1 FOREIGN key (musician_id) references musicians (id) on delete CASCADE,
    constraint musician_instruments_fk2 FOREIGN key (instrument_id) references instruments (id) on delete CASCADE


);

.schema 
