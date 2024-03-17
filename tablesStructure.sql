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
currency_name VARCHAR(15)
);
ALTER TABLE currencies CHANGE COLUMN id_currencies id_currency INT;
ALTER TABLE currencies CHANGE COLUMN currencies_name currency_name VARCHAR(15);

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
FOREIGN KEY (currency) REFERENCES currencies(id_currency),
FOREIGN KEY (payment_method) REFERENCES payment_methods(id_payment_method),
FOREIGN KEY (payment_status) REFERENCES payment_status(id_payment_status)
);

CREATE TABLE variable_costs(
id_variable_cost INT AUTO_INCREMENT PRIMARY KEY,
variable_cost_name VARCHAR(50), 
currency INT,
payment_method INT,
cost FLOAT,
payment_date DATE,
payment_status INT, 
comments VARCHAR(200),
FOREIGN KEY (payment_method) REFERENCES payment_methods(id_payment_method),
FOREIGN KEY (payment_status) REFERENCES payment_status(id_payment_status),
FOREIGN KEY (currency) REFERENCES currencies(id_currency)
);
