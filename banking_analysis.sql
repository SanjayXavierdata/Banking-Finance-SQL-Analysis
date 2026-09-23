CREATE DATABASE banking_analysis;

USE banking_analysis;



CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    occupation VARCHAR(100),
    registration_date DATE
);


CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type VARCHAR(30),
    balance DECIMAL(12,2),
    open_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);



CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(12,2),
    channel VARCHAR(30),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);



CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_type VARCHAR(30),
    loan_amount DECIMAL(12,2),
    interest_rate DECIMAL(5,2),
    loan_date DATE,
    due_date DATE,
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- customer data

INSERT INTO customers
(customer_id, customer_name, gender, age, city, occupation, registration_date)
VALUES
(1, 'Arun Kumar', 'Male', 29, 'Dubai', 'Software Engineer', '2022-03-15'),
(2, 'Sarah Ahmed', 'Female', 34, 'Abu Dhabi', 'Accountant', '2021-07-21'),
(3, 'Rahul Menon', 'Male', 41, 'Sharjah', 'Business Owner', '2020-11-10'),
(4, 'Aisha Khan', 'Female', 27, 'Dubai', 'Marketing Executive', '2023-01-18'),
(5, 'Mohammed Ali', 'Male', 52, 'Abu Dhabi', 'Manager', '2019-05-25'),
(6, 'Priya Nair', 'Female', 31, 'Sharjah', 'Data Analyst', '2022-09-12'),
(7, 'Daniel Thomas', 'Male', 38, 'Dubai', 'Sales Manager', '2020-04-08'),
(8, 'Fatima Hassan', 'Female', 45, 'Ajman', 'Teacher', '2018-12-19'),
(9, 'Vivek Raj', 'Male', 26, 'Dubai', 'Developer', '2023-06-11'),
(10, 'Noor Ali', 'Female', 30, 'Abu Dhabi', 'HR Specialist', '2022-02-14'),
(11, 'Joseph Mathew', 'Male', 47, 'Sharjah', 'Consultant', '2019-09-20'),
(12, 'Maya George', 'Female', 36, 'Dubai', 'Designer', '2021-11-03'),
(13, 'Omar Hassan', 'Male', 55, 'Abu Dhabi', 'Director', '2017-08-17'),
(14, 'Anjali Sharma', 'Female', 28, 'Ajman', 'Engineer', '2023-03-22'),
(15, 'Faisal Ahmed', 'Male', 43, 'Dubai', 'Business Owner', '2020-01-30'),
(16, 'Sneha Joseph', 'Female', 33, 'Sharjah', 'Analyst', '2022-05-16'),
(17, 'Kiran Kumar', 'Male', 39, 'Abu Dhabi', 'Manager', '2019-10-09'),
(18, 'Layla Mohammed', 'Female', 25, 'Dubai', 'Customer Service', '2024-01-12'),
(19, 'Adil Rahman', 'Male', 48, 'Ajman', 'Trader', '2018-06-25'),
(20, 'Emma Wilson', 'Female', 32, 'Dubai', 'Consultant', '2021-03-18');


-- account data


INSERT INTO accounts
(account_id, customer_id, account_type, balance, open_date)
VALUES
(101, 1, 'Savings', 25000.00, '2022-03-16'),
(102, 2, 'Current', 85000.00, '2021-07-22'),
(103, 3, 'Current', 145000.00, '2020-11-11'),
(104, 4, 'Savings', 18000.00, '2023-01-19'),
(105, 5, 'Savings', 120000.00, '2019-05-26'),
(106, 6, 'Savings', 42000.00, '2022-09-13'),
(107, 7, 'Current', 67000.00, '2020-04-09'),
(108, 8, 'Savings', 53000.00, '2018-12-20'),
(109, 9, 'Savings', 15000.00, '2023-06-12'),
(110, 10, 'Current', 76000.00, '2022-02-15'),
(111, 11, 'Savings', 92000.00, '2019-09-21'),
(112, 12, 'Savings', 35000.00, '2021-11-04'),
(113, 13, 'Current', 210000.00, '2017-08-18'),
(114, 14, 'Savings', 22000.00, '2023-03-23'),
(115, 15, 'Current', 165000.00, '2020-01-31'),
(116, 16, 'Savings', 48000.00, '2022-05-17'),
(117, 17, 'Current', 98000.00, '2019-10-10'),
(118, 18, 'Savings', 12500.00, '2024-01-13'),
(119, 19, 'Current', 135000.00, '2018-06-26'),
(120, 20, 'Savings', 39000.00, '2021-03-19');

-- transaction data

INSERT INTO transactions
(transaction_id, account_id, transaction_date, transaction_type, amount, channel)
VALUES
(1001, 101, '2026-01-05', 'Deposit', 5000, 'Online'),
(1002, 101, '2026-01-18', 'Withdrawal', 1200, 'ATM'),
(1003, 101, '2026-02-10', 'Deposit', 3500, 'Online'),
(1004, 101, '2026-03-15', 'Withdrawal', 800, 'ATM'),

(1005, 102, '2026-01-07', 'Deposit', 15000, 'Branch'),
(1006, 102, '2026-01-20', 'Withdrawal', 5000, 'Online'),
(1007, 102, '2026-02-14', 'Deposit', 12000, 'Online'),
(1008, 102, '2026-03-21', 'Withdrawal', 3000, 'ATM'),

(1009, 103, '2026-01-03', 'Deposit', 25000, 'Branch'),
(1010, 103, '2026-01-28', 'Withdrawal', 7000, 'Online'),
(1011, 103, '2026-02-16', 'Deposit', 18000, 'Online'),
(1012, 103, '2026-03-12', 'Deposit', 22000, 'Branch'),

(1013, 104, '2026-01-11', 'Deposit', 4000, 'Online'),
(1014, 104, '2026-02-19', 'Withdrawal', 1500, 'ATM'),
(1015, 104, '2026-03-08', 'Deposit', 3000, 'Online'),

(1016, 105, '2026-01-05', 'Deposit', 30000, 'Branch'),
(1017, 105, '2026-01-25', 'Withdrawal', 10000, 'Online'),
(1018, 105, '2026-02-11', 'Deposit', 25000, 'Online'),
(1019, 105, '2026-03-19', 'Withdrawal', 5000, 'ATM'),

(1020, 106, '2026-01-09', 'Deposit', 7000, 'Online'),
(1021, 106, '2026-02-15', 'Withdrawal', 2000, 'ATM'),
(1022, 106, '2026-03-17', 'Deposit', 6500, 'Online'),

(1023, 107, '2026-01-12', 'Deposit', 18000, 'Branch'),
(1024, 107, '2026-02-05', 'Withdrawal', 6000, 'Online'),
(1025, 107, '2026-03-22', 'Deposit', 14000, 'Branch'),

(1026, 108, '2026-01-18', 'Deposit', 9000, 'Online'),
(1027, 108, '2026-02-20', 'Withdrawal', 2500, 'ATM'),

(1028, 109, '2026-01-15', 'Deposit', 3000, 'Online'),
(1029, 109, '2026-02-12', 'Withdrawal', 1000, 'ATM'),
(1030, 109, '2026-03-05', 'Deposit', 2500, 'Online'),

(1031, 110, '2026-01-08', 'Deposit', 16000, 'Branch'),
(1032, 110, '2026-02-18', 'Withdrawal', 4500, 'Online'),
(1033, 110, '2026-03-14', 'Deposit', 12000, 'Online'),

(1034, 111, '2026-01-06', 'Deposit', 20000, 'Branch'),
(1035, 111, '2026-02-22', 'Withdrawal', 8000, 'ATM'),

(1036, 112, '2026-01-13', 'Deposit', 6000, 'Online'),
(1037, 112, '2026-02-17', 'Withdrawal', 1800, 'ATM'),
(1038, 112, '2026-03-20', 'Deposit', 5000, 'Online'),

(1039, 113, '2026-01-04', 'Deposit', 45000, 'Branch'),
(1040, 113, '2026-01-30', 'Withdrawal', 12000, 'Online'),
(1041, 113, '2026-02-13', 'Deposit', 50000, 'Branch'),
(1042, 113, '2026-03-18', 'Deposit', 40000, 'Online'),

(1043, 114, '2026-01-21', 'Deposit', 5000, 'Online'),
(1044, 114, '2026-02-25', 'Withdrawal', 1000, 'ATM'),

(1045, 115, '2026-01-02', 'Deposit', 35000, 'Branch'),
(1046, 115, '2026-02-09', 'Withdrawal', 9000, 'Online'),
(1047, 115, '2026-03-16', 'Deposit', 30000, 'Branch'),

(1048, 116, '2026-01-17', 'Deposit', 8000, 'Online'),
(1049, 116, '2026-02-21', 'Withdrawal', 2000, 'ATM'),
(1050, 116, '2026-03-11', 'Deposit', 7500, 'Online'),

(1051, 117, '2026-01-10', 'Deposit', 22000, 'Branch'),
(1052, 117, '2026-02-16', 'Withdrawal', 5000, 'Online'),
(1053, 117, '2026-03-23', 'Deposit', 18000, 'Branch'),

(1054, 118, '2026-01-19', 'Deposit', 2500, 'Online'),
(1055, 118, '2026-02-14', 'Withdrawal', 700, 'ATM'),

(1056, 119, '2026-01-06', 'Deposit', 28000, 'Branch'),
(1057, 119, '2026-02-19', 'Withdrawal', 7500, 'Online'),
(1058, 119, '2026-03-15', 'Deposit', 24000, 'Branch'),

(1059, 120, '2026-01-14', 'Deposit', 10000, 'Online'),
(1060, 120, '2026-02-23', 'Withdrawal', 3000, 'ATM'),
(1061, 120, '2026-03-10', 'Deposit', 8500, 'Online');


-- loan data

INSERT INTO loans
(loan_id, customer_id, loan_type, loan_amount, interest_rate, loan_date, due_date, loan_status)
VALUES
(201, 1, 'Personal', 25000, 7.50, '2025-01-15', '2026-01-15', 'Active'),
(202, 2, 'Car', 45000, 6.25, '2025-04-10', '2027-04-10', 'Active'),
(203, 3, 'Business', 150000, 5.75, '2024-06-20', '2027-06-20', 'Active'),
(204, 4, 'Personal', 18000, 8.25, '2025-09-05', '2026-09-05', 'Active'),
(205, 5, 'Home', 350000, 4.50, '2022-03-12', '2032-03-12', 'Active'),
(206, 6, 'Education', 30000, 5.50, '2024-08-18', '2028-08-18', 'Active'),
(207, 7, 'Car', 55000, 6.75, '2025-02-14', '2028-02-14', 'Active'),
(208, 8, 'Personal', 20000, 8.00, '2025-05-22', '2026-05-22', 'Closed'),
(209, 9, 'Personal', 15000, 8.50, '2025-11-10', '2026-11-10', 'Active'),
(210, 10, 'Home', 280000, 4.75, '2023-07-15', '2033-07-15', 'Active'),
(211, 11, 'Business', 125000, 5.90, '2024-01-25', '2027-01-25', 'Active'),
(212, 12, 'Car', 40000, 6.50, '2025-06-12', '2028-06-12', 'Active'),
(213, 13, 'Business', 250000, 5.25, '2023-09-18', '2028-09-18', 'Active'),
(214, 14, 'Education', 22000, 5.75, '2025-01-30', '2029-01-30', 'Active'),
(215, 15, 'Home', 400000, 4.25, '2021-11-20', '2031-11-20', 'Active'),
(216, 16, 'Personal', 28000, 7.75, '2025-03-16', '2026-03-16', 'Active'),
(217, 17, 'Car', 60000, 6.30, '2024-12-10', '2027-12-10', 'Active'),
(218, 18, 'Personal', 12000, 8.75, '2025-10-05', '2026-10-05', 'Active'),
(219, 19, 'Business', 175000, 5.60, '2024-04-15', '2027-04-15', 'Active'),
(220, 20, 'Education', 35000, 5.40, '2025-08-20', '2029-08-20', 'Active');




SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_accounts
FROM accounts;

SELECT COUNT(*) AS total_transactions
FROM transactions;

SELECT COUNT(*) AS total_loans
FROM loans;


-- Data Cleaning


-- Check for NULL values

SELECT *
FROM customers
WHERE customer_id IS NULL
   OR customer_name IS NULL
   OR gender IS NULL
   OR age IS NULL
   OR city IS NULL
   OR occupation IS NULL
   OR registration_date IS NULL;
   
   
   SELECT *
FROM accounts
WHERE account_id IS NULL
   OR customer_id IS NULL
   OR account_type IS NULL
   OR balance IS NULL
   OR open_date IS NULL;
   
   
   SELECT *
FROM transactions
WHERE transaction_id IS NULL
   OR account_id IS NULL
   OR transaction_date IS NULL
   OR transaction_type IS NULL
   OR amount IS NULL
   OR channel IS NULL;
   
   
   SELECT *
FROM loans
WHERE loan_id IS NULL
   OR customer_id IS NULL
   OR loan_type IS NULL
   OR loan_amount IS NULL
   OR interest_rate IS NULL
   OR loan_date IS NULL
   OR due_date IS NULL
   OR loan_status IS NULL;
   
   
   
   -- Check duplicate records
   
   
   SELECT
    customer_id,
    COUNT(*) AS record_count
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;


SELECT
    transaction_id,
    COUNT(*) AS record_count
FROM transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;


SELECT
    loan_id,
    COUNT(*) AS record_count
FROM loans
GROUP BY loan_id
HAVING COUNT(*) > 1;

SELECT
    account_id,
    COUNT(*) AS record_count
FROM accounts
GROUP BY account_id
HAVING COUNT(*) > 1;


-- Check invalid ages

SELECT *
FROM customers
WHERE age < 18
   OR age > 100;
   
   
-- Check invalid transaction amounts
SELECT *
FROM transactions
WHERE amount <= 0;


-- Basic EDA

-- Number of customers
SELECT COUNT(*) AS total_customers
FROM customers;



-- customers by city

SELECT
    city,
    COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;


-- Customers by gender
SELECT
    gender,
    COUNT(*) AS customer_count
FROM customers
GROUP BY gender;


-- Average customer age

SELECT
    ROUND(AVG(age), 2) AS average_age
FROM customers;


-- Total balance
SELECT
    SUM(balance) AS total_balance
FROM accounts;

-- Average balance by account type

SELECT
    account_type,
    ROUND(AVG(balance), 2) AS average_balance
FROM accounts
GROUP BY account_type;


-- Highest account balances

SELECT
    account_id,
    customer_id,
    account_type,
    balance
FROM accounts
ORDER BY balance DESC
LIMIT 10;


-- total transaction value

SELECT
    SUM(amount) AS total_transaction_value
FROM transactions;

-- Number of transactions

SELECT
    COUNT(*) AS total_transactions
FROM transactions;



-- Business Insights

-- How many customers does the bank have?
SELECT COUNT(*) AS total_customers
FROM customers;


-- What is the total balance held across all accounts?

SELECT
    SUM(balance) AS total_account_balance
FROM accounts;


-- What is the average account balance by account type?
SELECT
    account_type,
    ROUND(AVG(balance), 2) AS average_balance
FROM accounts
GROUP BY account_type;

-- How many transactions are there for each transaction type?

SELECT
    transaction_type,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_type;

-- What is the total amount of deposits and withdrawals?

SELECT
    transaction_type,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_type;



-- Which customers have the highest total transaction amount?

SELECT
    a.customer_id,
    SUM(t.amount) AS total_transaction_amount
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.customer_id
ORDER BY total_transaction_amount DESC
LIMIT 5;


-- What are the monthly transaction totals?


SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
ORDER BY month;



-- Which customers have been inactive for more than 90 days?


SELECT
    a.customer_id,
    MAX(t.transaction_date) AS last_transaction_date
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.customer_id
HAVING MAX(t.transaction_date) < CURRENT_DATE - INTERVAL 90 DAY;


-- Which loan types have the highest total loan amount?

SELECT
    loan_type,
    COUNT(*) AS loan_count,
    SUM(loan_amount) AS total_loan_amount
FROM loans
GROUP BY loan_type
ORDER BY total_loan_amount DESC;



-- Which loans are currently overdue?

SELECT
    loan_id,
    customer_id,
    loan_type,
    loan_amount,
    due_date,
    DATEDIFF(CURRENT_DATE, due_date) AS days_overdue
FROM loans
WHERE due_date < CURRENT_DATE
  AND loan_status = 'Active';
  
  
  
-- Which loans are due within the next 30 days?


SELECT
    loan_id,
    customer_id,
    loan_type,
    loan_amount,
    due_date
FROM loans
WHERE due_date >= CURRENT_DATE
  AND due_date < CURRENT_DATE + INTERVAL 30 DAY
  AND loan_status = 'Active';
  
  
  
-- Who are the top 3 customers by total transaction amount?

WITH customer_transactions AS (
    SELECT
        a.customer_id,
        SUM(t.amount) AS total_amount
    FROM accounts a
    JOIN transactions t
        ON a.account_id = t.account_id
    GROUP BY a.customer_id
),

ranked_customers AS (
    SELECT
        customer_id,
        total_amount,
        DENSE_RANK() OVER (
            ORDER BY total_amount DESC
        ) AS rnk
    FROM customer_transactions
)

SELECT
    customer_id,
    total_amount,
    rnk
FROM ranked_customers
WHERE rnk <= 3;


-- What is the monthly change in transaction amount?

WITH monthly_transactions AS (
    SELECT
        DATE_FORMAT(transaction_date, '%Y-%m') AS month,
        SUM(amount) AS total_amount
    FROM transactions
    GROUP BY DATE_FORMAT(transaction_date, '%Y-%m')
)

SELECT
    month,
    total_amount,
    LAG(total_amount) OVER (
        ORDER BY month
    ) AS previous_month_amount,
    total_amount -
        LAG(total_amount) OVER (
            ORDER BY month
        ) AS month_change
FROM monthly_transactions
ORDER BY month;



-- What is the running net transaction amount?

SELECT
    transaction_date,
    transaction_type,
    amount,
    SUM(
        CASE
            WHEN transaction_type = 'Deposit' THEN amount
            ELSE -amount
        END
    ) OVER (
        ORDER BY transaction_date, transaction_id
    ) AS running_balance
FROM transactions;


-- Who are the top 3 customers in each city?

WITH customer_total AS (
    SELECT
        c.city,
        c.customer_id,
        c.customer_name,
        SUM(t.amount) AS total_amount
    FROM customers c
    JOIN accounts a ON c.customer_id = a.customer_id
    JOIN transactions t ON a.account_id = t.account_id
    GROUP BY c.city, c.customer_id, c.customer_name
)
SELECT *
FROM (
    SELECT *,
        DENSE_RANK() OVER (
            PARTITION BY city
            ORDER BY total_amount DESC
        ) AS rnk
    FROM customer_total
) x
WHERE rnk <= 3;



-- What are each customer's first and latest transactions?

SELECT
    a.customer_id,
    MIN(t.transaction_date) AS first_transaction,
    MAX(t.transaction_date) AS latest_transaction,
    DATEDIFF(
        MAX(t.transaction_date),
        MIN(t.transaction_date)
    ) AS active_days
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.customer_id;



-- Which customers made deposits but no withdrawals?

SELECT
    a.customer_id
FROM accounts a
JOIN transactions t
    ON a.account_id = t.account_id
GROUP BY a.customer_id
HAVING
    SUM(t.transaction_type = 'Deposit') > 0
    AND SUM(t.transaction_type = 'Withdrawal') = 0;
    
    
    
-- What are the monthly deposits, withdrawals, and net amount?

SELECT
    DATE_FORMAT(transaction_date, '%Y-%m') AS month,
    SUM(CASE WHEN transaction_type = 'Deposit'
             THEN amount ELSE 0 END) AS deposits,
    SUM(CASE WHEN transaction_type = 'Withdrawal'
             THEN amount ELSE 0 END) AS withdrawals,
    SUM(CASE WHEN transaction_type = 'Deposit'
             THEN amount ELSE -amount END) AS net_amount
FROM transactions
GROUP BY month
ORDER BY month;
