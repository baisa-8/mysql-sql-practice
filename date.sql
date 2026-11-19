Use cdg_hyd_jfs_59;
DROP DATABASE cdg_hyd_jfs_59; -- Removes total database
DROP TABLE products; -- Remove a table totally
CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL
);
DROP TABLE products;
CREATE TABLE products (
    product_id INT,
    name VARCHAR(100),
    price DECIMAL(6 , 2 )
);
INSERT INTO 
	products(product_id,name,price)
VALUES
	(101,'Maaggi Noodles',15);

INSERT INTO
	products(product_id,name,price) 
VALUES
	(102,'Yipppee Noodles',25.50);
INSERT INTO 
	products(product_id,name,price) 
VALUES
	(103,'Chings Noodles',9999.99);
INSERT INTO products(product_id,name,price) VALUES(104,'Maggi veggie Noodles',9999.999);
INSERT INTO products(product_id,name,price) VALUES(105,'kKissan jam',99999.99);
-- Before decimal upto 4 places max
-- after decimal upto 2 places max

-- it is (6,2) means
-- if more out of range error
SELECT 
    product_id, name, price
FROM
    products;
 
 
 
 
 
 
CREATE TABLE booking (
    booking_id INT,
    train_no INT,
    train_name VARCHAR(50),
    date_of_journey DATE,
    departure_time TIME,
    booking_date_time DATETIME
);
INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(101,
    20345,
    'VENKATADRI EXPRESS',
    '2026-11-20',
    '05:45',
    '2026-11-19 22:34:55'
);
INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(102,
    14867,
    'YPR VANDE BHARAT',
    '2026-11-20',
    '19:46',
    '2026-11-19 10:34:55'
);

INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(103,
    22983,
    'SBC RAJADHANI',
    '2026-11-20',
    '17:25',
    '2026-11-19 14:46:20'
);
INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(104,
    17453,
    'KCG YBK EXPRESS',
    '2026-11-20',
    '21:05',
    '2026-11-19'
);
INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(102,
    14867,
    'ANP VANDE BHARAT',
    '2026-11-20',
    '16:23',
    '2026-11-19 11:36:51'
);

INSERT INTO 
	booking(booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time) 
VALUES
	(102,
    19867,
    'YPR PASSENGER BOGIE',
    '2026-11-20',
    '19:46',
    NOW()
);
SELECT 
    booking_id,
    train_no,
    train_name,
    date_of_journey,
    departure_time,
    booking_date_time
FROM
    booking;
    
-- Predefined fuctions of MySQL
SELECT CURRENT_DATE(),CURRENT_TIME(),NOW(),curdate(),curtime();
DROP TABLE booking;




