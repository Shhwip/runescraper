drop database if exists runescape;
create database runescape;
use runescape;
-- name, unique
-- link to image
-- latitude
-- longitude
-- map id
DROP TABLE IF EXISTS teleports;
create table teleports (
    id int AUTO_INCREMENT primary key,
    name tinytext not null,
    image tinytext null,
    latitude int not null,
    longitude int not null,
    map_id int not null
);
