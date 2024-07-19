CREATE DATABASE movie;
CREATE DATABASE Bank_info;
USE movie;
CREATE TABLE movie_info(theatre_name varchar(25),movie_id int, movie_name varchar(20), movie_language varchar(30), Director varchar(20));
ALTER TABLE movie_info ADD COLUMN Movie_hero varchar(30), ADD COLUMN Released_year int, ADD COLUMN Mobile_number bigint, ADD COLUMN Movie_ticket bigint, ADD COLUMN Ticket_approved boolean;
ALTER TABLE movie_info RENAME COLUMN movie_language TO movie_lang, RENAME COLUMN Director TO Movie_Director, RENAME COLUMN Mobile_number TO customer_phone_no, RENAME COLUMN Movie_hero TO M_Hero, RENAME COLUMN Movie_ticket TO M_Ticket;
INSERT INTO movie_info VALUES('abc', 01, 'kalki', 'tamil', 'kalanathi', 'prabas', 2024, 995200881, 1000, TRUE)
INSERT INTO movie_info VALUES('abc', 02, 'master', 'tamil', 'atlee', 'vijay', 2020, 995277541, 900, TRUE)
INSERT INTO movie_info VALUES('cine', 03, 'varisu', 'tamil', 'kalanathi', 'vijay', 2022, 995208781, 1050, TRUE)
INSERT INTO movie_info VALUES('cINE', 04, 'kGF', 'Kanada', 'prabu', 'yash', 2022, 807650881, 1000, TRUE)
INSERT INTO movie_info VALUES('yxz', 05, 'kgf2', 'kanada', 'prabu', 'yash', 2023, 995265451, 1000, TRUE)
INSERT INTO movie_info VALUES('cinepolis', 06, 'Leo', 'tamil', 'atlee', 'vijay', 2023, 999870181, 1000, TRUE)
INSERT INTO movie_info VALUES('cinepolis', 07, 'Maharaja', 'tamil', 'lokesh', 'vijaysethu', 2024, 805200881, 900, TRUE)
INSERT INTO movie_info VALUES('cinepolis', 08, 'Star', 'tamil', 'kavin', 'kavin', 2023, 800720881, 1000, TRUE)
INSERT INTO movie_info VALUES('cinepolis', 09, 'Bluestar', 'tamil', 'lokesh', 'ashok selvan', 2024, 805200881, 1050, TRUE)
INSERT INTO movie_info VALUES('anand', 10, 'Jailer', 'tamil', 'kalanathi maran', 'rajani', 2023, 805266551, 1000, TRUE)
USE movie;
UPDATE movie_info SET movie_lang= movie_lang;
SELECT * FROM movie_info;
UPDATE movie_info SET movie_lang= 'tamil' WHERE Ticket_approved=1;
UPDATE movie_info SET Movie_Director='atlee' WHERE M_Ticket=1000; 
UPDATE movie_info SET movie_lang='tamil' WHERE M_Ticket=900; 
UPDATE movie_info SET M_Ticket=900 WHERE movie_lang='hindi';
UPDATE movie_info SET Released_year=2024 WHERE M_Ticket=1000;
DELETE FROM movie_info WHERE movie_id=2; 
DELETE FROM movie_info WHERE movie_name='Leo';
DELETE FROM movie_info WHERE M_Hero='vijaysethu';

SELECT * FROM movie_info WHERE movie_id=4 AND M_Hero='yash'; 
SELECT * FROM movie_info WHERE movie_id=4 or M_Hero='kavin';
SELECT * FROM movie_info WHERE M_Ticket NOT IN (1050);
SELECT * FROM movie_info WHERE Movie_Director IN ('atlee','lokesh');