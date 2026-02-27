# Advanced DBMS Assignment
### by: *Lovesh Kumrawat (Roll No: DS7E-2507)*

---

> 1
```sql
SELECT std_name FROM student WHERE marks > 80;
```

![1763317315275](image/AdvancedDBMSAssignment/1763317315275.png)

> 2

```sql
SELECT subject, COUNT(*) AS Student_Count FROM student GROUP BY subject;
```

![1763317785446](image/AdvancedDBMSAssignment/1763317785446.png)

> 3

```sql
SELECT std_name FROM student WHERE subject = 'DBMS';
```

![1763317847932](image/AdvancedDBMSAssignment/1763317847932.png)

> 4

```sql
SELECT subject, AVG(marks) AS average_marks FROM student GROUP BY subject;
```

![1763317894862](image/AdvancedDBMSAssignment/1763317894862.png)

> 5

```sql
SELECT std_name, marks FROM student ORDER BY marks DESC;
```

![1763318039093](image/AdvancedDBMSAssignment/1763318039093.png)

> 6

```sql
SELECT std_name, marks FROM student ORDER BY marks DESC LIMIT 1;
```

![1763318160316](image/AdvancedDBMSAssignment/1763318160316.png)

> 7

```sql
SELECT std_name FROM student WHERE marks < (SELECT AVG(marks) FROM student);
```

![1763318224631](image/AdvancedDBMSAssignment/1763318224631.png)

> 8

```sql
SELECT SUM(marks) AS Total_Marks FROM student;
```

![1763318248677](image/AdvancedDBMSAssignment/1763318248677.png)

> 9

```sql
SELECT subject, MAX(marks) AS highest_score FROM student GROUP BY subject;
```

![1763318288986](image/AdvancedDBMSAssignment/1763318288986.png)

> 10

```sql
SELECT COUNT(*) AS students_below_50 FROM student WHERE marks < 50;
```

![1763319337797](image/AdvancedDBMSAssignment/1763319337797.png)

> 11

```sql
SELECT subject, AVG(marks) AS average_marks FROM student GROUP BY subject;
```

![1763319375935](image/AdvancedDBMSAssignment/1763319375935.png)

> 12

```sql
SELECT COUNT(DISTINCT subject) AS distinct_courses FROM student;
```

![1763319395714](image/AdvancedDBMSAssignment/1763319395714.png)

> 13

```sql
SELECT subject, COUNT(*) AS student_count FROM student GROUP BY subject;
```

![1763319435749](image/AdvancedDBMSAssignment/1763319435749.png)

> 14

```sql
SELECT MIN(marks) AS minimum_marks FROM student;
```

![1763319464566](image/AdvancedDBMSAssignment/1763319464566.png)

> 15

```sql
SELECT std_name, SUM(marks) AS total_marks FROM student GROUP BY std_name;
```

![1763319493687](image/AdvancedDBMSAssignment/1763319493687.png)

> 16

```sql
SELECT COUNT(*) AS students_above_average FROM student WHERE marks > (SELECT AVG(marks) FROM student);
```

![1763319533341](image/AdvancedDBMSAssignment/1763319533341.png)

> 17

```sql
SELECT subject FROM student GROUP BY subject ORDER BY AVG(marks) DESC LIMIT 1;
```

![1763319554490](image/AdvancedDBMSAssignment/1763319554490.png)

> 18

```sql
SELECT std_name, marks, (marks / 100.0) * 100 AS percentage FROM student;
```

![1763319585030](image/AdvancedDBMSAssignment/1763319585030.png)

> 19

```sql
SELECT std_name, ROUND(marks) AS rounded_marks FROM student;
```

![1763319608508](image/AdvancedDBMSAssignment/1763319608508.png)

> 20

```sql
SELECT MAX(marks) - MIN(marks) AS Marks_Difference FROM student;
```

![1763319632671](image/AdvancedDBMSAssignment/1763319632671.png)

> 21

```sql
SELECT std_name, marks FROM student WHERE marks > (SELECT AVG(marks) * 1.10 FROM student);
```

![1763319649454](image/AdvancedDBMSAssignment/1763319649454.png)

> 22

```sql
SELECT std_name, marks, POWER(marks, 2) AS marks_squared FROM student;
```

![1763319667717](image/AdvancedDBMSAssignment/1763319667717.png)

> 23

```sql
SELECT ROUND(AVG(marks), 2) AS average_marks FROM student;
```

![1763319684471](image/AdvancedDBMSAssignment/1763319684471.png)

> 24

```sql
SELECT std_name, marks, (marks / (SELECT SUM(marks) FROM student) * 100) AS percentage_contribution FROM student;
```

![1763319702151](image/AdvancedDBMSAssignment/1763319702151.png)

> 25

```sql
SELECT std_name, marks, ABS(marks - (SELECT AVG(marks) FROM student)) AS marks_difference FROM student;
```

![1763319735557](image/AdvancedDBMSAssignment/1763319735557.png)

> 26

```sql
SELECT std_name, marks, RANK() OVER (ORDER BY marks DESC) AS std_rank FROM student;
```

![1763319832871](image/AdvancedDBMSAssignment/1763319832871.png)

> 27

```sql
SELECT COUNT(*) AS total_students FROM student;
```

![1763319861543](image/AdvancedDBMSAssignment/1763319861543.png)

> 28

```sql
SELECT std_name, LENGTH(std_name) AS first_name_length FROM student;
```

![1763319924942](image/AdvancedDBMSAssignment/1763319924942.png)

> 29

```sql
SELECT UPPER(std_name) AS uppercase_name FROM student;
```

![1763319951738](image/AdvancedDBMSAssignment/1763319951738.png)

> 30

```sql
SELECT LOWER(std_name) AS lowercase_student_name FROM student;
```

![1763319975234](image/AdvancedDBMSAssignment/1763319975234.png)

> 31

```sql
SELECT std_name, SUBSTRING(std_name, 1, 2) AS first_two_letters FROM student;
```

![1763319995683](image/AdvancedDBMSAssignment/1763319995683.png)

> 32

```sql
SELECT * FROM student WHERE std_name LIKE 'S%';
```

![1763320011247](image/AdvancedDBMSAssignment/1763320011247.png)

> 33

```sql
SELECT * FROM student WHERE LENGTH(std_name) > 3;
```

![1763320054997](image/AdvancedDBMSAssignment/1763320054997.png)

> 34

```sql
SELECT std_name, REPLACE(std_name, 'o', '0') AS modified_last_name FROM student;
```

![1763320089102](image/AdvancedDBMSAssignment/1763320089102.png)

> 35

```sql
ALTER TABLE student ADD email VARCHAR(100);
```

![1763320110768](image/AdvancedDBMSAssignment/1763320110768.png)

> 36

```sql
ALTER TABLE student RENAME COLUMN std_name TO std_first_name;
```

![1763320147104](image/AdvancedDBMSAssignment/1763320147104.png)

> 37

```sql
ALTER TABLE student DROP COLUMN subject;
```

![1763320199969](image/AdvancedDBMSAssignment/1763320199969.png)

> 38

```sql
ALTER TABLE student ADD PRIMARY KEY (std_enroll_no);
```

![1763320275445](image/AdvancedDBMSAssignment/1763320275445.png)

> 39

```sql
ALTER TABLE student ADD CONSTRAINT unique_email UNIQUE (email);
```

![1763320290882](image/AdvancedDBMSAssignment/1763320290882.png)

> 40

```sql
UPDATE student SET marks = marks + 5;
```

![1763320326706](image/AdvancedDBMSAssignment/1763320326706.png)

> 41

```sql
UPDATE student SET std_first_name = 'Amit Kumar' WHERE std_enroll_no = 'DS1001';
```

![1763320472879](image/AdvancedDBMSAssignment/1763320472879.png)

> 42

```sql
UPDATE student SET marks = 80 WHERE marks IS NULL;
```

![1763320506457](image/AdvancedDBMSAssignment/1763320506457.png)

> 43

```sql
DELETE FROM student WHERE std_first_name = 'Amit Kumar';
```

![1763320553367](image/AdvancedDBMSAssignment/1763320553367.png)

> 44

```sql
DELETE FROM student WHERE std_first_name LIKE 'A%';
```

![1763320583099](image/AdvancedDBMSAssignment/1763320583099.png)

> 45

```sql
DELETE FROM student WHERE marks < 75;
```

![1763320599852](image/AdvancedDBMSAssignment/1763320599852.png)

> 46

```sql
DELETE FROM student;
```

![1763320616244](image/AdvancedDBMSAssignment/1763320616244.png)

> 47

```sql
SELECT * FROM student;
```

![1763320632014](image/AdvancedDBMSAssignment/1763320632014.png)

> 48

```sql
SELECT first_name, last_name FROM student;
```

![1763320650447](image/AdvancedDBMSAssignment/1763320650447.png)

> 49

```sql
SELECT * FROM student WHERE marks = 90;
```

![1763320842719](image/AdvancedDBMSAssignment/1763320842719.png)

> 50

```sql
SELECT * FROM student WHERE marks > 80;
```

![1763320860975](image/AdvancedDBMSAssignment/1763320860975.png)

> 51

```sql
SELECT * FROM student WHERE std_first_name = 'Raj';
```

![1763320894559](image/AdvancedDBMSAssignment/1763320894559.png)

> 52

```sql
SELECT * FROM student ORDER BY marks DESC;
```

![1763320913952](image/AdvancedDBMSAssignment/1763320913952.png)

> 53

```sql
SELECT COUNT(*) AS total_students FROM student;
```

![1763320939799](image/AdvancedDBMSAssignment/1763320939799.png)

> 54

```sql
SELECT marks, COUNT(*) AS Total_Student FROM student GROUP BY marks;
```

![1763320958285](image/AdvancedDBMSAssignment/1763320958285.png)

> 55

```sql
SELECT DISTINCT marks FROM student;
```

![1763320973616](image/AdvancedDBMSAssignment/1763320973616.png)

> 56

```sql
SELECT * FROM student WHERE std_first_name LIKE 'A%';
```

![1763321002804](image/AdvancedDBMSAssignment/1763321002804.png)

> 57

```sql
SELECT * FROM student WHERE marks > (SELECT AVG(marks) FROM student);
```

![1763321017043](image/AdvancedDBMSAssignment/1763321017043.png)

---
