-- Create table for golfers
CREATE TABLE golfers (
    golferid INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(200),
    phone VARCHAR(20)
);

-- Insert golfers
INSERT INTO golfers VALUES (101, 'Barbara', '123 Main St.', '555-5678');
INSERT INTO golfers VALUES (100, 'Rich', '123 Main St.', '555-1234');
INSERT INTO golfers VALUES (99, 'Nick', '122 Main St.', '555-8765');
INSERT INTO golfers VALUES (98, 'Joe', '121 Main St.', '555-4321');

-- Show golfers table data
SELECT * FROM golfers;

-- Create table for games
CREATE TABLE games (
    gameid INT AUTO_INCREMENT PRIMARY KEY,
    golferid INT,
    score INT
);

-- Insert games
INSERT INTO games (golferid, score) VALUES (100, 110);
INSERT INTO games (golferid, score) VALUES (100, 115);
INSERT INTO games (golferid, score) VALUES (100, 105);
INSERT INTO games (golferid, score) VALUES (101, 110);
INSERT INTO games (golferid, score) VALUES (101, 112);
INSERT INTO games (golferid, score) VALUES (101, 130);
INSERT INTO games (golferid, score) VALUES (99, 100);
INSERT INTO games (golferid, score) VALUES (99, 101);
INSERT INTO games (golferid, score) VALUES (99, 102);
INSERT INTO games (golferid, score) VALUES (98, 105);
INSERT INTO games (golferid, score) VALUES (98, 106);
INSERT INTO games (golferid, score) VALUES (98, 107);

-- Show games table data
SELECT * FROM games;

-- Order golfers by name
SELECT golferid, name FROM golfers ORDER BY name;

-- Stats for a golfer who doesn’t exist (returns 0 rows)
SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 102;
SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 90;

-- Stats for real golfers
SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 98;
SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 99;


SELECT * FROM games JOIN golfers ON games.golferid = golfers.golferid 
WHERE games.golferid = 99;