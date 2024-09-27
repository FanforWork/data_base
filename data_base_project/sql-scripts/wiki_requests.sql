--Выбираем студентов из группы 253, упорядочивая по фамилии
SELECT surname, name FROM wiki.Students WHERE groupa = 253 ORDER BY surname;
/*
   surname    |   name    
--------------+-----------
 Абдуллабеков | Магомед
 Андреева     | Камилла
 Афиф         | Азиз
 Газагбаев    | Ахмет
 Ибрагимов    | Сунатилла
 Лойко        | Максим
 Морозова     | София
 Морочковский | Владислав
 Назаров      | Степан
 Наркевич     | Григорий
 Павлюковец   | Виталий
 Почепко      | Илья
 Собол        | Жан
 Сороко       | Артём
 Хакимова     | Мавджуда
*/


--найдём среднюю оценку знаний преподавателя
SELECT subject, AVG(knowledge) as avg_knowledge
FROM wiki.Reviews
WHERE student = 1
GROUP BY subject;

/*
 subject |   avg_knowledge    
---------+--------------------
       2 | 5.0000000000000000
       3 | 5.0000000000000000
       4 | 5.0000000000000000
       6 | 5.0000000000000000
       9 | 5.0000000000000000
*/

--количество отзывов сгруппированное для учителя, упорядочили по учителю
SELECT teacher, COUNT(*) as review_count
FROM wiki.Reviews
GROUP BY teacher;

/*
 teacher | review_count 
---------+--------------
      11 |            1
       9 |            1
      15 |            1
       3 |            1
       5 |            1
       4 |            1
      10 |            1
       6 |            1
      14 |            1
      13 |            1
       2 |            1
       7 |            1
      12 |            1
       1 |            1
       8 |            1
*/

--список студентов, которые оставили отзывы на определенный предмет
SELECT DISTINCT student_id, surname, name
FROM wiki.Students
JOIN wiki.Reviews ON wiki.Students.student_id = wiki.Reviews.student
WHERE subject = 2;

/*
 student_id |   surname    |  name   
------------+--------------+---------
          1 | Абдуллабеков | Магомед
*/

--список учителей, которые преподают на определённой кафедре
SELECT DISTINCT teacher_id, surname
FROM wiki.Teachers
JOIN wiki.Subjects ON wiki.Teachers.department = wiki.Subjects.department
WHERE wiki.Teachers.department = 2;

/*
 teacher_id |  surname   
------------+------------
          1 | Голубев
          2 | Редкозубов
          3 | Штепин
          4 | Попов
          5 | Бурцев
          6 | Казаков
          7 | Черняев
          8 | Иванова
          9 | Гусев
*/

--список студентов, которые оставили отзывы на определенного учителя, сгруппированные по студентам
SELECT student, COUNT(*) as review_count
FROM wiki.Reviews
WHERE teacher = 2
GROUP BY student;

/*
 student | review_count 
---------+--------------
       1 |            1
*/

--список предметов, которые преподаются на определённой кафедре, с количеством студентов, оставших отзывы.
SELECT subject_id, COUNT(DISTINCT student) as student_count
FROM wiki.Reviews
JOIN wiki.Subjects ON wiki.Reviews.subject = wiki.Subjects.subject_id
WHERE department = 2
GROUP BY subject_id;

/*
 subject_id | student_count 
------------+---------------
          2 |             1
*/

--список студентов, которые оставили отзывы на определенный предмет, с количеством отзывов
SELECT student, COUNT(*) as review_count
FROM wiki.Reviews
WHERE subject = 2
GROUP BY student;

/*
 student | review_count 
---------+--------------
       1 |            9
*/

--список учителей, которые преподают на кафедре, с количеством предметов, которые они преподают.
SELECT teachers.teacher_id, COUNT(DISTINCT subjects.subject_id) as subject_count
FROM wiki.Teachers
JOIN wiki.Subjects ON wiki.Teachers.department = wiki.Subjects.department
WHERE wiki.Teachers.department = 2
GROUP BY teachers.teacher_id;

/*
 teacher_id | subject_count 
------------+---------------
          1 |             2
          2 |             2
          3 |             2
          4 |             2
          5 |             2
          6 |             2
          7 |             2
          8 |             2
          9 |             2
*/

--Список студентов, которые оставили отзывы на определенного учителя
SELECT student, COUNT(*) as review_count
FROM wiki.Reviews
WHERE teacher = 2
GROUP BY student;

/*
 student | review_count 
---------+--------------
       1 |            1
*/
