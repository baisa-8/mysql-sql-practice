USE cdg_hyd_jfs_59;

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee INT,
    delivery_mode VARCHAR(20),
    course_status VARCHAR(20),
    created_at VARCHAR(10)
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
	delivery_mode,
	course_status,
	created_at)
 VALUES 
	(1,'CRS-JAVA-101',
    'Java Fundamentals',
    'Programming',40,
	6000,
    'CLASSROOM',
    'ACTIVE','15-08-2026');
    
INSERT INTO  courses
	(course_id,
	course_code,
	course_title,
	category,
	duration_hours,
	fee,
	delivery_mode,
	course_status,
	created_at)
 VALUES 
	(2,'CRS-SQL-102',	
    'MySQL Essentials',
	'Database',
	32,
	4500,
    'ONLINE',
    'ACTIVE',
    '13-05-2022'),
    (3,'CRS-WEB-103',
    'Responsive Web Design',
	'Web Development',
    28,
    0,
    'ONLINE',
	'ACTIVE',
    '22-03-2024');
    
INSERT INTO  courses
 VALUES
	(4,
    'CRS-TST-104',	
    'Software Testing Basics',
	'Testing',
	24	,
    3500,
    'HYBRID',
    'ACTIVE',
    '12-12-2025');
    
INSERT INTO courses VALUES
	(5,
    'CRS-OLD-105',
    'Legacy Systems Overview',
    'Technology',
	12,
	2000,
    '	ONLINE',
	'ARCHIVED',
    '13-04-2021');
UPDATE courses 
SET 
    fee = 6500
WHERE
    course_code = 'CRS-JAVA-101';
UPDATE courses 
SET 
    fee = ROUND(fee * 1.10, 0)
WHERE
    course_status = 'ACTIVE';
UPDATE courses 
SET 
    fee = 2500,
    course_status = 'ACTIVE'
WHERE
    course_code = 'CRS-WEB-103';
UPDATE courses SET duration_hours=duration_hours*4 WHERE category='Testing';
DELETE FROM courses 
WHERE
    course_status = 'ARCHIVED';

SELECT 
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    delivery_mode,
    course_status,
    created_at
FROM
    courses;
