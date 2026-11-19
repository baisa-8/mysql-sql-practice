USE cdg_hyd_jfs_59;
DROP TABLE courses;

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee DECIMAL(10,2),
	discount_percentage	DECIMAL(5,2),
    delivery_mode VARCHAR(20),
    start_date DATE,
    class_start_time TIME,
    class_end_time TIME,
    created_at DATETIME
);


DESCRIBE courses;

SHOW CREATE TABLE courses;

INSERT INTO  courses
	(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
    discount_percentage,
	delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
	created_at)
 VALUES 
	(1,'CRS-JAVA-101',
    'Java Fundamentals',
    'Programming',
    40,
	66500.00	,
    10.00	,
    'CLASSROOM',
    '2026-12-01',
    '2026-12-01	09:00:00',
	'11:00:00',	
    '2026-11-19 09:00:00');

INSERT INTO  courses
	(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
	discount_percentage,
	delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
	created_at)
 VALUES 
	(2,'CRS-SQL-102',	
    'MySQL Essentials',
	'Database',
	32,
	4500.50,
	5.00,
    'ONLINE',
    '2026-12-05',
    '2026-12-05	10:00:00',
	'12:00:00',
	'2026-11-19 09:15:00'
    ),
    (3,'CRS-WEB-103',
    'Responsive Web Design',
	'Web Development',
    28,
    8500.00,
	12.50,
    'ONLINE',
    '2027-01-10',
    '2027-01-10	14:00:00',
	'16:00:00',
	'2026-11-19 09:30:00'
    );
    
INSERT INTO  courses(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
    discount_percentage,
	delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
	created_at)
 VALUES
(4, 'CRS-TST-104', 
'Software Testing Basics',
 'Testing', 
 24, 
 3500.75,
 0.00,
 'HYBRID',
 '2026-12-15',
 '2026-12-15 15:00:00', 
 '17:00:00',
 '2026-11-19 09:45:00');

    
INSERT INTO courses(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
    discount_percentage,
	delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
	created_at) VALUES
	(5,
    'CRS-PYT-105',
    'Python Basics	',
    'Programming',
	36,
	5500.25,
    7.50,
    'ONLINE',
    '2027-01-05	',
	'2027-01-05	09:30:00',
	'11:30:00',
	'2026-11-19 10:00:00');
INSERT INTO courses(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
    discount_percentage,
	delivery_mode,
    class_start_time,
    class_end_time,
	created_at) VALUES(6, 'CRS-CLD-106', 'Cloud Computing Fundamentals', 'Cloud', 30, 4999.99, 12.75, 'ONLINE', '2027-01-12 11:00:00', '13:00:00', '2026-11-19 10:15:00'),
(7, 'CRS-DSA-107', 'Data Structures and Algorithms', 'Programming', 45, 7500.00, 10.00, 'CLASSROOM', '2027-01-15 08:30:00', '10:30:00', '2026-11-19 10:30:00');
UPDATE courses 
SET 
    fee = 7000.00
WHERE
    course_code = 'CRS-JAVA-101';
UPDATE courses 
SET 
    fee = ROUND(fee * 1.085, 2)
WHERE
    delivery_mode = 'ONLINE';
    UPDATE courses 
SET 
    delivery_mode = 'ONLINE'
WHERE
    course_code = 'CRS-WEB-103';
UPDATE courses 
SET 
    start_date = '2027-01-15'
WHERE
    course_code = 'CRS-PYT-105';
UPDATE courses 
SET 
    class_start_time = '10:00:00',
    class_end_time = '12:00:00'
WHERE
    delivery_mode = 'CLASSROOM';
UPDATE courses 
SET 
    created_at = '2026-11-20 11:30:00'
WHERE
    course_id = 6;
SELECT 
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    discount_percentage,
    delivery_mode,
    start_date
    class_start_time,
    class_end_time,
    created_at
FROM
    courses;
    
-- INSTRUTORS
USE cdg_hyd_jfs_59;
DROP TABLE instructors;
CREATE TABLE instructors(instructor_id	INT	,
instructor_code	VARCHAR(12)	 ,
first_name	VARCHAR(60)	 ,
last_name	VARCHAR(60)	 ,
email	VARCHAR(120),	 
specialization	VARCHAR(100),	 
years_experience	INT	 ,
hourly_rate	DECIMAL(8,2)	,
employment_type	VARCHAR(20)	 ,
joined_on	DATE,
work_start_time	TIME,
work_end_time	TIME,
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
    joined_on	,
	work_start_time	,
	work_end_time)
VALUES (
    1,
    'INS-JV-001',
	'Kavya',
    'Menon',
    'kavya.menon@example.test',
    'Java',
	8,
    1500.50	,
    'FULL_TIME',
	'2021-06-14',
	'09:00:00',
    '18:00:00');
INSERT INTO instructors(instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    joined_on	,
	work_start_time	,
	work_end_time)
VALUES 
	(2,
    'INS-DB-002',
    'Ritesh',
    'Kumar',
    'riteshkumar@example.test',
    'Databases',
    12,
    1800.75,
    'CONTRACT',
    '2019-02-01',
	'10:00:00',
	'19:00:00'),
	(3,
    'INS-WB-003',
    'Farah',
    'Ali',
    'farah.ali@example.test',
    'Web Development',
    5,
    1200.00,
    'PART_TIME',
    '2023-08-21',
	'14:00:00'	,
    '18:00:00');
INSERT INTO instructors
 VALUES
	(4,
    'INS-QA-004',
    'Nitin',
    'Bose',
	'nitin.bose@example.test',
	'Software Testing',
	7,
    1350.25,
	'PART_TIME',
    '2022-01-10',
	'09:30:00',
	'13:30:00',NULL
	),
    (5,
    'INS-OLD-005',
    'Leela',
	'Shah',
	'leela.shah@example.test',
	'Mainframe Systems',
	25,
    1600.00,
    'CONTRACT',
	'2020-05-17	',
    '09:00:00',
    '18:00:00',NULL);  
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
	joined_on	,
	work_start_time	,
	work_end_time)
VALUES (
	6,
    'INS-SSC-006',
    'Renu',
    'Desaii',
    'renu.desai@example.test',
    'Soft skills',
    0,
    1500.45,
    'PART-TIME',
    '2020-05-18',
    '10:30:00',
    '19:00:00');
UPDATE instructors 
SET 
    hourly_rate = 1500.75
WHERE
    instructor_code = 'INS-QA-004';
UPDATE instructors 
SET 
    hourly_rate = ROUND(hourly_rate * 1.10, 0)
WHERE employment_type = 'FULL TIME';
UPDATE instructors 
SET 
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';
UPDATE instructors 
SET 
    joined_on = '2020-06-01'
WHERE
    instructor_code = 'INS-PY-005';

UPDATE instructors 
SET 
    work_start_time = '10:00:00',
    work_end_time = '14:00:00'
WHERE
    employment_type = 'PART_TIME';
   ;

UPDATE instructors 
SET 
    created_at = '2019-02-13'
WHERE
    instructor_id = 3;
    
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
    joined_on	,
	work_start_time	,
	work_end_time,
    created_at
FROM
    instructors;
    
    
    
    
    
    
-- WAREHOUSES TABLE


DROP TABLE warehouses;
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    monthly_rent DECIMAL(12,2),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    open_time TIME,
    closing_time TIME,
    last_inspection DATE,
    created_at DATETIME
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
	monthly_rent,
	temperature_controlled,
	operational_status,
    open_time,
    closing_time,
    last_inspection,
	created_at)
VALUES
	(1,
    'WH-BLR-01',
	'Bengaluru Central',
    'Bengaluru',
    'Karnataka',
    10000,
    6400,
    125000.50,
	0,
	'ACTIVE',	
    '08:00:00',
	'20:00:00',
	'2026-10-01',
    '2010-03-23');
INSERT INTO warehouses
	(warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
    monthly_rent,
	temperature_controlled,
	operational_status,
    open_time,
    closing_time,
    last_inspection,
	created_at)
VALUES
	(2,
    'WH-HYD-02',
	'Hyderabad North',
	'Hyderabad',
	'Telangana',	
    8000,
	7900,
    98000.00,
    1,
	'ACTIVE',
	'07:00:00',
    '22:00:00',
	'2026-09-15',
    '2019-02-11'),
    (3,
    'WH-MUM-03',
    'Mumbai Port Store',
	'Mumbai',
	'Maharashtra',
	15000,
    9000,
	175500.75,
	0,
    'MAINTENANCE',
    '09:00:00',
	'18:00:00',
	'2026-08-20',
    '2021-03-01');
INSERT INTO warehouses (
    warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
	monthly_rent,
	temperature_controlled,
	operational_status,
    open_time,
    closing_time,
    last_inspection,
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
    85000.25	,
    1,
    'ACTIVE',
    '6:00:00',
    '21:00:00',
	'2026-10-10',
    '2020-04-08'),
    (5,'WH-OLD-05',
    'Training Closed Store',
    'Pune',
    'Maharashtra',
    2000,
    0,
    75000.00,
    0,
    'ACTIVE',
    '08:30:00',
	'19:30:00',
	'2026-10-25',
    '1998-12-04');
INSERT INTO warehouses (
    warehouse_id,
	warehouse_code,
	warehouse_name,
	city,
	state,
	capacity_units,
	occupied_units,
	monthly_rent,
	temperature_controlled,
	operational_status,
	created_at
)
VALUES
    (6,
    'WH-HYD-06',
    'Hyderabad Central Hub',
    'Hyderabad',
    'Telangana', 
    5000, 
    2500, 
    40000.40,
    1, 
    'ACTIVE',
    '2017-08-05');
INSERT INTO warehouses(open_time) VALUES('06:30:00');
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
    operational_status='ACTIVE'
WHERE
    warehouse_code='WH-MUM-03';
UPDATE warehouses 
SET 
    monthly_rent = ROUND(monthly_rent * 0.055, 2)
WHERE
    temperature_controlled = 1;
UPDATE warehouses 
SET 
    last_inspection='2026-11-15'
WHERE
    warehouse_code = 'WH-KOC-04';

UPDATE warehouses SET
open_time='07:00:00' ,closing_time='21:00:00'
   
WHERE
    operational_status = 'ACTIVE';
SELECT 
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    monthly_rent,
    temperature_controlled,
    operational_status,
    open_time,
    closing_time,
    last_inspection,
    created_at
FROM
    warehouses;



--

