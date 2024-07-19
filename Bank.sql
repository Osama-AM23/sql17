USE Bank_info;
CREATE TABLE bank_details (account_number VARCHAR(50),account_holder VARCHAR(30),branch VARCHAR(50),balance BIGINT, is_active BOOLEAN);
ALTER TABLE bank_details ADD COLUMN account_type VARCHAR(60), ADD COLUMN opened_date DATE, ADD COLUMN last_transaction_date DATE, ADD COLUMN overdraft_limit INT, ADD COLUMN account_status VARCHAR(70);
ALTER TABLE bank_details RENAME COLUMN account_number TO acct_number, RENAME COLUMN account_holder TO acct_holder, RENAME COLUMN branch TO branch_name, RENAME COLUMN balance TO acct_balance, RENAME COLUMN is_active TO active_status;
INSERT INTO bank_details (acct_number, acct_holder, branch_name, acct_balance, active_status, account_type, opened_date, last_transaction_date, overdraft_limit, account_status)
VALUES 
('1234567890', 'Rajesh Kumar', 'Mumbai', 1500000, TRUE, 'Savings', '2020-01-01', '2024-07-01', 50000, 'Good'),
('2345678901', 'Suman Sharma', 'Delhi', 2500000, TRUE, 'Checking', '2019-05-15', '2024-06-28', 100000, 'Good'),
('3456789012', 'Anil Verma', 'Bangalore', 500000, FALSE, 'Savings', '2018-03-22', '2024-07-15', 20000, 'Closed'),
('4567890123', 'Priya Singh', 'Chennai', 7500000, TRUE, 'Checking', '2021-11-05', '2024-07-12', 150000, 'Good'),
('5678901234', 'Rohit Patel', 'Hyderabad', 3000000, TRUE, 'Savings', '2022-07-19', '2024-07-19', 70000, 'Good'),
('6789012345', 'Aarti Jain', 'Kolkata', 1200000, TRUE, 'Savings', '2017-02-14', '2024-07-01', 30000, 'Good'),
('7890123456', 'Vijay Malhotra', 'Pune', 4000000, TRUE, 'Checking', '2016-08-30', '2024-07-05', 200000, 'Good'),
('8901234567', 'Nidhi Gupta', 'Ahmedabad', 2000000, FALSE, 'Savings', '2020-12-01', '2024-07-08', 60000, 'Dormant'),
('9012345678', 'Karan Mehta', 'Jaipur', 600000, TRUE, 'Checking', '2023-04-15', '2024-07-16', 80000, 'Good'),
('0123456789', 'Sneha Agarwal', 'Lucknow', 5000000, TRUE, 'Savings', '2015-09-20', '2024-07-03', 100000, 'Good');

SELECT * FROM bank_details;
UPDATE bank_details
SET acct_balance = acct_balance - 100000
WHERE acct_holder = 'Rajesh Kumar';

UPDATE bank_details
SET overdraft_limit = overdraft_limit + 20000
WHERE account_type = 'Checking';

UPDATE bank_details
SET active_status = FALSE
WHERE acct_number = '6789012345';

UPDATE bank_details
SET account_status = 'Overdue'
WHERE acct_balance < 1000000;

UPDATE bank_details SET last_transaction_date = '2024-07-20' WHERE acct_holder = 'Rohit Patel';
DELETE FROM bank_details WHERE acct_balance=500000 ;
DELETE FROM bank_details WHERE acct_holder= 'Aarti Jain' ;
DELETE FROM bank_details WHERE account_status= 'Closed' ;
SELECT * FROM bank_details
WHERE acct_balance > 2000000 AND active_status = TRUE;

SELECT * FROM bank_details WHERE acct_holder IN ('Rajesh Kumar', 'Suman Sharma', 'Rohit Patel');