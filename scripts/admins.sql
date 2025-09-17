SHOW DATABASES;

CREATE TABLE admins (
adminID      INT(11)      NOT NULL   AUTO_INCREMENT,
emailAddress VARCHAR(255) NOT NULL   UNIQUE,
password     CHAR(64)     NOT NULL,
firstName    VARCHAR(60)  NOT NULL,
lastName     VARCHAR(60)  NOT NULL,
PRIMARY KEY (adminID)
);

SHOW TABLES;

SHOW CREATE TABLE admins;

DESCRIBE admins;

INSERT INTO admins
(emailAddress, password, firstName, lastName)
VALUES
('taylor@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Taylor', 'Swift');

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('justin@guitarshop.com', SHA2('myL0ngP@ssword', 256), 'Justin', 'Bieber');

SELECT * FROM admins;
SELECT emailAddress, firstName FROM admins ORDER BY firstName;

INSERT INTO admins (emailAddress, password, firstName, lastName)
VALUES ('shawn@guitarshop.com', SHA2('whothehellknows', 256), 'Shawn', 'Bieber');

UPDATE admins SET emailAddress = 'taylorrrrswift@guitarshop.com' WHERE adminID = 1;

DELETE FROM admins WHERE adminID = 1;

SELECT * FROM admins;
