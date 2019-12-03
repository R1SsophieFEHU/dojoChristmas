USE happyChristmas;

DROP TABLE if exists gift;
DROP TABLE if exists child;

CREATE TABLE child
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
firstname VARCHAR (100),
lastname VARCHAR (100),
kindness INT
);


CREATE TABLE gift
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
name VARCHAR (100),
child_id INT NOT NULL,
FOREIGN KEY (child_id) REFERENCES child (id)
);