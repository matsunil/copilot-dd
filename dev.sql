-- define a select statement to get all students enrolled in a course
SELECT students.first_name, students.last_name, students.email, students.phone, students.city, students.state, students.zip_code
FROM courses.students
JOIN courses.registrations
ON students.student_id = registrations.student_id
JOIN courses.registration_items
ON registrations.registration_id = registration_items.registration_id
WHERE registration_items.course_id = 1;

-- write an index to improve the performance of the query
CREATE INDEX idx_course_id
ON courses.registration_items (course_id);

-- define a table for student attendance to capture attendance by class
CREATE TABLE courses.attendance (
    attendance_id INT IDENTITY (1, 1) PRIMARY KEY,
    registration_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_status tinyint NOT NULL,
    -- Attendance status: 1 = Present; 2 = Absent; 3 = Late; 4 = Excused
    FOREIGN KEY (registration_id) REFERENCES courses.registrations (registration_id) ON DELETE CASCADE ON UPDATE CASCADE
);
```

define a stored procedure to get course enrollment by location
```sql
-- Path: dev.sql
-- define a stored procedure to get course enrollment by location
CREATE PROCEDURE courses.get_course_enrollment_by_location
    @location_id INT
    AS
    BEGIN
        SELECT locations.location_name, COUNT(registrations.registration_id) AS enrollment
        FROM courses.locations
        JOIN courses.staffs
        ON locations.location_id = staffs.location_id
        JOIN courses.registrations
        ON staffs.staff_id = registrations.staff_id
        WHERE locations.location_id = @location_id
        GROUP BY locations.location_name;
    END;
```
define a stored procedure to get instructor details associated with a location
include instructor details, location details, and courses associated with the instructor
use instructor_id as the input parameter
```sql
-- Path: dev.sql
-- define a stored procedure to get instructor details associated with a location
-- include instructor details, location details, and courses associated with the instructor
-- use instructor_id as the input parameter
CREATE PROCEDURE courses.get_instructor_details
    @instructor_id INT
    AS
    BEGIN
        SELECT staffs.first_name, staffs.last_name, staffs.email, staffs.phone, locations.location_name, locations.street, locations.city, locations.state, locations.zip_code, subjects.course_name
        FROM courses.staffs
        JOIN courses.locations
        ON staffs.location_id = locations.location_id
        JOIN courses.registrations
        ON staffs.staff_id = registrations.staff_id
        JOIN courses.registration_items
        ON registrations.registration_id = registration_items.registration_id
        JOIN curriculum.subjects
        ON registration_items.course_id = subjects.course_id
        WHERE staffs.staff_id = @instructor_id;
    END;
```


SELECT * 
FROM courses.registration 
WHERE registration_date >= '2023-09-01' AND registration_date < '2023-10-01';
