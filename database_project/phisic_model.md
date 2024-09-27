'Students'

| Название   | Описание               | Тип данных  | Ограничение |
|------------|------------------------|-------------|-------------|
| student_id | идентификатор студента | integer     | primary key |
| Surname    | фамилия                | varchar(50) | not null    |
| Name       | имя                    | varchar(50) | not null    |
| Group      | группа                 | integer     | not null    |


'Reviews'

| Название      | Описание               | Тип данных  | Ограничение |
|---------------|------------------------|-------------|-------------|
| review_id     | идентификатор          | integer     | primary key |
| student_id    | идентификатор студента | integer     | foreign key |
| teacher_id    | идентификатор препа    | integer     | foreign key |
| subject_id    | идентификатор предмета | integer     | foreign key |
| Knowledge     | знания                 | integer     | not null    |
| Freeloading   | халявность             | integer     | not null    |
| Communication | в общении              | integer     | not null    |
| Review        | комментарий о препе    | VARCHAR(100)| not null    |

'Subjects'

| Название       | Описание                           | Тип данных | Ограничение |
|----------------|------------------------------------|------------|-------------|
| subject_id     | идентификатор предмета             | integer    | primary key |
| deparatamet_id | идентификатор кафедры              | integer    | foreign key |
| Name           | название предмета                  | VARCHAR(50)| not null    |


'Teachers'

| Название      | Описание              | Тип данных  | Ограничение |
|---------------|-----------------------|-------------|-------------|
| teacher_id    | идентификатор учителя | integer     | primary key |
| department_id | идентификатор кафедры | integer     | foreign key |
| Surname       | Фамилия               | VARCHAR(50) | foreign key |
| Name          | имя                   | VARCHAR(50) | not null    |
| Degree        | учёная степень        | VARCHAR(50) | not null    |


'Departments'

| Название      | Описание               | Тип данных  | Ограничение |
|---------------|------------------------|-------------|-------------|
| department_id | идентификатор кафедры  | integer     | primary key |
| Name          | название               | varchar(50) | not null    |
| Head_name     | имя главы кафедры      | varchar(50) | not null    |

'ReviewHistory'

| Название      | Описание               | Тип данных  | Ограничение               |
|---------------|------------------------|-------------|---------------------------|
| review_id     | идентификатор          | integer     | primary key               |
| student_id    | идентификатор студента | integer     | foreign key               |
| teacher_id    | идентификатор препа    | integer     | foreign key               |
| subject_id    | идентификатор предмета | integer     | foreign key               |
| Knowledge     | знания                 | integer     | not null                  |
| Freeloading   | халявность             | integer     | not null                  |
| Communication | в общении              | integer     | not null                  |
| Review        | комментарий о препе    | VARCHAR(100)| not null                  |
| Date          | дата                   | TIMESTAMP   | DEFAULT CURRENT_TIMESTAMP |