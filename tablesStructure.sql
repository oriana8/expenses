Create database expenses;
Use expenses;
CREATE TABLE payment_methods (
id_payment_method INT AUTO_INCREMENT PRIMARY KEY,
payment_method_name VARCHAR(15)
);
CREATE TABLE payment_status(
id_payment_status INT AUTO_INCREMENT PRIMARY KEY,
payment_status_name VARCHAR(15)
);
CREATE TABLE currencies(
id_currency INT AUTO_INCREMENT PRIMARY KEY,
currenciey_name VARCHAR(15)
);
CREATE TABLE fixed_costs(
id_fixed_cost INT AUTO_INCREMENT PRIMARY KEY,
fixed_cost_name VARCHAR(50), 
currency INT,
payment_method INT,
cost FLOAT,
payment_date DATE,
autopay boolean,
payment_status INT, 
comments VARCHAR(200),
FOREIGN KEY (currency) REFERENCES currencies(id_currencies)
);

CREATE TABLE variable_costs(
id_variable_cost INT AUTO_INCREMENT PRIMARY KEY,
variable_cost_name VARCHAR(50), 
currency VARCHAR(4),
payment_method INT FOREIGN KEY,
cost FLOAT,
payment_date DATE,
payment_status INT FOREIGN KEY, 
comments VARCHAR(200)
);
