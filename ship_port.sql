CREATE TABLE ship_port(id INT, ship_name VARCHAR(30), ship_type VARCHAR(30), post_name VARCHAR(30), ship_halt_time INT, sources VARCHAR(30), destination VARCHAR(30));
INSERT INTO ship_port VALUES(1, 'Santa Marine', 'Military', 'Chennai', 4, 'chennai', 'bangaladesh');
INSERT INTO ship_port VALUES(2, 'INS Vikrant', 'Military', 'Viszag', 3, 'Viszag', 'SriLanka');
INSERT INTO ship_port VALUES(3, 'INS Talwar', 'Military', 'Mumbai', 5, 'Mumbai', 'Delhi');
INSERT INTO ship_port VALUES(4, 'INS Kalvari', 'Military', 'Hyderabad', 1, 'Hyderabad', 'China');
INSERT INTO ship_port VALUES(5, 'INS Satpura', 'Military', 'Netharland', 4, 'Netharland', 'Switerzland');
INSERT INTO ship_port VALUES(6, ' Shivalik', 'Passenger', 'New York', 2, 'New York', 'Chennai');
INSERT INTO ship_port VALUES(7, 'INS VikramAdhitya', 'Military', 'Brazil', 4, 'Brazil', 'South Africa');
INSERT INTO ship_port VALUES(8, 'sub Marine', 'Military', 'Canada', 2, 'Canada', 'Tuticorin');
INSERT INTO ship_port VALUES(9, ' Karanj', 'Passenger', 'Malasiya', 4, 'Malasiya', 'Thailand');
INSERT INTO ship_port VALUES(10, 'INS Vajir', 'Military', 'Singapore', 5, 'Singapore', 'Bang Kong');
INSERT INTO ship_port VALUES(11, ' Carnival Jubilee', 'Passenger', 'Japan', 4, 'Japan', 'North korea');
INSERT INTO ship_port VALUES(12, 'Cunard line ', 'Passenger','China', 3, 'China', 'South Korea');
INSERT INTO ship_port VALUES(13, 'Mardi Gras', 'Passenger', 'Kolkata', 5, 'Kolkata', 'Miyanmar');
INSERT INTO ship_port VALUES(14, 'Tutle Marine', 'Sub Marine', 'Mangalore', 4, 'Mangalore', 'Gujarat');
INSERT INTO ship_port VALUES(15, 'USS Nautius', 'Sub Marine', 'Pacfic Ocean', 5, 'Pacfic Ocean', 'Indian Ocean');
INSERT INTO ship_port VALUES(16, 'USS Holland', 'Sub Marine', 'Kaniyakumari', 4, 'Kaniyakumari', 'Pondichery');
INSERT INTO ship_port VALUES(17, 'HMS Ocelot', 'Sub Marine', 'Saudi Arabia', 6, 'Saudi Arabia', 'bangaladesh');
INSERT INTO ship_port VALUES(18, 'Titanic', 'Passenger', 'Thailand', 4, 'Thailand', 'Delhi');
INSERT INTO ship_port VALUES(19, 'Container Ships', 'Goods Ship', 'Bangalore', 2, 'Bangalore', 'Kolkata');
INSERT INTO ship_port VALUES(20, 'General Cargo Ships', 'Goods Ship', 'Delhi', 4, 'Delhi', 'Bangalore');

SELECT * FROM ship_port ORDER BY id;



