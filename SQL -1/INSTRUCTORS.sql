-- TABLE FOR INSTRUCTORS
CREATE TABLE instructors(instructor_id	INT	,
instructor_code	VARCHAR(12)	 ,
first_name	VARCHAR(60)	 ,
last_name	VARCHAR(60)	 ,
email	VARCHAR(120),	 
specialization	VARCHAR(100),	 
years_experience	INT	 ,
hourly_rate	INT	,
employment_type	VARCHAR(20)	 ,
is_active	INT	,
joined_on	VARCHAR(10),
created_at	VARCHAR(10));

DESCRIBE TABLE instructors;

INSERT INTO instructors
	(instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at)
VALUES (
    1,
    'INS-JV-001',
	'Kavya',
    'Menon',
    'kavya.menon@example.test',
    'Java',
	8,
    1500	,
    'FULL_TIME',
	1,
    '2021-06-14',
    '2020-08-15');
INSERT INTO instructors
	(instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at)
VALUES 
	(2,
    'INS-DB-002',
    'Ritesh',
    'Kumar',
    'riteshkumar@example.test',
    'Databases',
    12,
    1800,
    'CONTRACT',
    1,
    '2019-02-01',
    '2018-04-24'),
	(3,
    'INS-WB-003',
    'Farah',
    'Ali',
    'farah.ali@example.test',
    'Web Development',
    5,
    1200,
    'PART_TIME',
    1,
    '2023-08-21',
    '2020-11-12');
INSERT INTO instructors
 VALUES
	(4,
    'INS-QA-004',
    'Nitin',
    'Bose',
	'nitin.bose@example.test',
	'Software Testing',
	7,
    1350,
	'PART_TIME',
	1,
    '2022-01-10',
    '2020-12-12'),
    (5,
    'INS-OLD-005',
    'Leela',
	'Shah',
	'leela.shah@example.test',
	'Mainframe Systems',
	25,
    2000,
    'CONTRACT',
	0,
    '2010-05-17',
    '2009-02-18');  
INSERT INTO instructors
	(instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at)
VALUES (
	6,
    'INS-SSC-006',
    'Renu',
    'Deasi',
    'renu.desai@example.test',
    'Soft skills',
    12,
    1500,
    'PART-TIME',
    1,
    '2025-05-20',
    '2025-02-10');
UPDATE instructors 
SET 
    hourly_rate = 1500
WHERE
    instructor_code = 'INS-QA-004';
UPDATE instructors 
SET 
    hourly_rate = ROUND(hourly_rate * 1.08, 0)
WHERE
    is_active = 1
        AND employment_type = 'CONTRACT';
UPDATE instructors 
SET 
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';
UPDATE instructors 
SET 
    years_experience = years_experience + 1
WHERE
    is_active = 1;
    SELECT 
    *
FROM
    instructors
WHERE
    years_experience > 50;

UPDATE instructors 
SET 
    is_active = 0
WHERE
    instructor_code = 'INS-OLD-005'
        AND is_active <> 0;
SELECT *
FROM instructors
WHERE instructor_code = 'INS-OLD-005';
DELETE FROM instructors 
WHERE
    instructor_code = 'INS-OLD-005'
    AND is_active = 0;
INSERT INTO 
	instructors
    (instructor_id,
    instructor_code) 
VALUES
    (7,'INS-TEMP-99');
DELETE FROM instructors 
WHERE
    instructor_code = 'INS-TEMP-99';

DELETE FROM instructors 
WHERE
    is_active = 0
    AND employment_type = 'PART-TIME'
    AND years_experience > 6;
    
SELECT 
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    is_active,
    joined_on,
    created_at
FROM
    instructors;


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