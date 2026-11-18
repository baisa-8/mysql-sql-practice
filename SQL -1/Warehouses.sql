-- TABLE FOR WAREHOUSE
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    manager_name VARCHAR(100),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    created_at VARCHAR(10)
);

DESCRIBE TABLE warehouses;

INSERT INTO warehouses
	(warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
	manager_name,
	temperature_controlled,
	operational_status,
	created_at)
VALUES
	(1,
    'WH-BLR-01',
	'Bengaluru Central',
    'Bengaluru',
    'Karnataka',
    10000,
    6400,
    'Ajay Nair',
	0,
    'ACTIVE',
    '12-12-2010');
INSERT INTO warehouses
	(warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
	manager_name,
	temperature_controlled,
	operational_status,
	created_at)
VALUES
	(2,
    'WH-HYD-02',
	'Hyderabad North',
	'Hyderabad',
	'Telangana',	
    8000,
	7900,
    'Sana Reddy',
    1,
    'ACTIVE',
    '22-11-2019'),
    (3,
    'WH-MUM-03',
    'Mumbai Port Store',
	'Mumbai',
	'Maharashtra',
	15000,
    9000,
	'Rohit Shah',
	0,
    'MAINTENANCE',
    '30-01-2021');
INSERT INTO warehouses (
    warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
	manager_name,
	temperature_controlled,
	operational_status,
	created_at
)
VALUES
    (4,
    'WH-KOC-04', 
    'Kochi Cold Hub',
    'Kochi',
    'Kerala',
    6000, 
    3200, 
    'Meera Varma',
    1,
    'ACTIVE',
    '14-08-2020'),
    (5,'WH-OLD-05',
    'Training Closed Store',
    'Pune',
    'Maharashtra',
    2000,
    0,
    'Test Manager',
    0,
    'CLOSED',
    '13-04-1998'),
    (6,
    'WH-HYD-06',
    'Hyderabad Central Hub',
    'Hyderabad',
    'Telangana', 
    5000, 
    2500, 
    'Arjun Reddy',
    1, 
    'ACTIVE',
    '08-05-2017');
UPDATE warehouses 
SET 
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';
UPDATE warehouses 
SET 
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-HYD-02';
UPDATE warehouses 
SET 
    occupied_units = occupied_units + 1000
WHERE
    temperature_controlled = 1;
UPDATE warehouses 
SET 
    occupied_units = 6500
WHERE
    warehouse_code = 'WH-KOC-04';
SELECT 
    warehouse_code, capacity_units, occupied_units
FROM
    warehouses
WHERE
    warehouse_code = 'WH-KOC-04';
SELECT 
    *
FROM
    warehouses
WHERE
    warehouse_code = 'WH-OLD-05';
DELETE FROM warehouses 
WHERE
    operational_status = 'CLOSED';
INSERT INTO 
	warehouses
    (warehouse_code) 
VALUES
	('WH-TMP-99');
DELETE FROM warehouses 
WHERE
    warehouse_code = 'WH-TMP-99';
SELECT 
    *
FROM
    warehouses
WHERE
    operational_status = 'ACTIVE';
DELETE FROM warehouses 
WHERE
    operational_status = 'ACTIVE'
    AND occupied_units < (capacity_units/2);
SELECT 
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    manager_name,
    temperature_controlled,
    operational_status,
    created_at
FROM
    warehouses;