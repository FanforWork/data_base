create schema wiki

create table wiki.Students (
  student_id integer primary key,
  surname varchar(50) not null,
  name varchar(50) not null,
  groupa integer not null
);

create table wiki.Departments (
  department_id integer primary key,
  name varchar(50) not null,
  head_name varchar(50) not null
);

create table wiki.Subjects (
  subject_id integer primary key,
  department integer references wiki.Departments(department_id),
  name varchar(50) not null
);

create table wiki.Teachers (
  teacher_id integer primary key,
  department integer references wiki.Departments(department_id),
  surname varchar(50) not null,
  name varchar(50) not null,
  degree varchar(50) not null
);

create table wiki.Reviews (
  review_id integer primary key,
  student integer references wiki.Students(student_id),
  teacher integer references wiki.Teachers(teacher_id),
  subject integer references wiki.Subjects(subject_id),
  knowledge integer not null,
  freeloading integer not null,
  communication integer not null,
  comment varchar(100) not null
);

create table wiki.ReviewHistory (
  review_id integer primary key,
  student integer references wiki.Students(student_id),
  teacher integer references wiki.Teachers(teacher_id),
  subject integer references wiki.Subjects(subject_id),
  knowledge integer not null,
  freeloading integer not null,
  communication integer not null,
  comment varchar(100) not null
  date_and_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
