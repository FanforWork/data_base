insert into wiki.Students (student_id, surname, name, groupa)
values
  (1, 'Абдуллабеков', 'Магомед', 253),
  (2, 'Андреева', 'Камилла', 253),
  (3, 'Наркевич', 'Григорий', 253),
  (4, 'Афиф', 'Азиз', 253),
  (5, 'Газагбаев', 'Ахмет', 253),
  (6, 'Ибрагимов', 'Сунатилла', 253),
  (7, 'Лойко', 'Максим', 253),
  (8, 'Морозова', 'София', 253),
  (9, 'Морочковский', 'Владислав', 253),
  (10, 'Назаров', 'Степан', 253),
  (11, 'Павлюковец', 'Виталий', 253),
  (12, 'Почепко', 'Илья', 253),
  (13, 'Собол', 'Жан', 253),
  (14, 'Сороко', 'Артём', 253),
  (15, 'Хакимова', 'Мавджуда', 253);

insert into wiki.Departments (department_id, name, head_name)
values
  (1, 'дия', 'Базанова'),
  (2, 'квм', 'Иванов'),
  (3, 'кафедра общей физики', 'Максимычев'),
  (4, 'кафедра физической культуры и спорта', 'Никишин'),
  (5, 'кафедра информатики', 'Петров'),
  (6, 'кафедра теоритическй физики', 'Ахмедов'),
  (9, 'кафедра теоретической механики', 'Соколов'),
  (10, 'военный учебный центр', 'Кваченко'),
  (11, 'атп', 'Ахтямов'),
  (12, 'дм', 'Райгородский'),
  (13, 'кафедра анализа данных', 'Райгородский'),
  (14, 'кафедра философии', 'Сербиенко'),
  (15, 'кафедра системной аналитики экономики', 'Улукаев');

insert into wiki.Subjects (subject_id, department, name)
values
  (1, 11, 'акос'),
  (2, 2, 'математический анализ'),
  (3, 11, 'алгоритмы'),
  (4, 11, 'c++'),
  (5, 2, 'линал'),
  (6, 12, 'дискретная математика'),
  (7, 12, 'дискран'),
  (8, 12, 'дискретные структуры'),
  (9, 12, 'овитм'),
  (10, 12, 'теорвер'),
  (11, 11, 'python'),
  (12, 11, 'базы данных'),
  (13, 13, 'анализ данных'),
  (14, 11, 'тп'),
  (15, 4, 'физра');

insert into wiki.Teachers (teacher_id, department, surname, name, degree)
values
  (1, 2, 'Голубев', 'Максим', 'Красный диплом бакалавра МФТИ'),
  (2, 2, 'Редкозубов', 'Вадим', 'Кандидат физико-математических наук'),
  (3, 2, 'Штепин', 'Вадим', 'кандидат физико-математических наук, доцент'),
  (4, 2, 'Попов', 'Александр', 'Кандидат физико-математических наук'),
  (5, 2, 'Бурцев', 'Алексей', 'Кандидат физико-математических наук'),
  (6, 2, 'Казаков', 'Илья', 'Кандидат физико-математических наук'),
  (7, 2, 'Черняев', 'Александр', 'Кандидат физико-математических наук'),
  (8, 2, 'Иванова', 'Светлана', 'Кандидат физико-математических наук'),
  (9, 2, 'Гусев', 'Николай', 'Кандидат физико-математических наук'),
  (10, 11, 'Долта', 'Артём', 'фпми'),
  (11, 12, 'Платинский', 'Степан', 'фпми'),
  (12, 11, 'Кулапин', 'Артур', 'фпми'),
  (13, 11, 'Мещерин', 'Илья', 'фпми'),
  (14, 11, 'Русецкий', 'Дмитрий', 'фпми'),
  (15, 12, 'Глибичук', 'Алексей', 'Кандидат физико-математических наук');

insert into wiki.Reviews (review_id, student, teacher, subject, knowledge, freeloading, communication, comment)
values
  (1, 1, 1, 2, 5, 3, 3, 'на матане забулил но по факту'),
  (2, 1, 2, 2, 5, 4, 4, 'добрый мужчина'),
  (3, 1, 3, 2, 5, 4, 4, 'даёт время подумать, но не халява'),
  (4, 1, 4, 2, 5, 5, 4, 'халявный мужик, лучший'),
  (5, 1, 5, 2, 5, 5, 4, 'душка'),
  (6, 1, 6, 2, 5, 4, 2, 'странный тип, но окэй'),
  (7, 1, 7, 2, 5, 4, 4, 'громкий и хочет спать, не фачит'),
  (8, 1, 8, 2, 5, 2, 4, 'спасите'),
  (9, 1, 9, 2, 5, 5, 5, 'душка'),
  (10, 1, 10, 3, 5, 3, 5, 'нормалды'),
  (11, 1, 11, 9, 5, 3, 5, 'классный семер, гигачад'),
  (12, 1, 12, 3, 5, 3, 4, 'слегка душнит, но ок'),
  (13, 1, 13, 4, 5, 3, 4, 'чет буллит людей на экзе'),
  (14, 1, 14, 4, 5, 3, 4, 'ну надо шарить за плюсы, чтобы сдать'),
  (15, 1, 15, 6, 5, 3, 4, 'слегка душит, но в целом ок');

insert into wiki.ReviewHistory (review_id, student, teacher, subject, knowledge, freeloading, communication, comment)
values
  (1, 1, 1, 2, 5, 3, 3, 'на матане забулил но по факту'),
  (2, 1, 2, 2, 5, 4, 4, 'добрый мужчина'),
  (3, 1, 3, 2, 5, 4, 4, 'даёт время подумать, но не халява'),
  (4, 1, 4, 2, 5, 5, 4, 'халявный мужик, лучший'),
  (5, 1, 5, 2, 5, 5, 4, 'душка'),
  (6, 1, 6, 2, 5, 4, 2, 'странный тип, но окэй'),
  (7, 1, 7, 2, 5, 4, 4, 'громкий и хочет спать, не фачит'),
  (8, 1, 8, 2, 5, 2, 4, 'спасите'),
  (9, 1, 9, 2, 5, 5, 5, 'душка'),
  (10, 1, 10, 3, 5, 3, 5, 'нормалды'),
  (11, 1, 11, 9, 5, 3, 5, 'классный семер, гигачад'),
  (12, 1, 12, 3, 5, 3, 4, 'слегка душнит, но ок'),
  (13, 1, 13, 4, 5, 3, 4, 'чет буллит людей на экзе'),
  (14, 1, 14, 4, 5, 3, 4, 'ну надо шарить за плюсы, чтобы сдать'),
  (15, 1, 15, 6, 5, 3, 4, 'слегка душит, но в целом ок'),
  (1, 11, 1, 2, 2, 2, 2, 'ууу злой какой'),
  (2, 11, 2, 2, 2, 2, 2, 'чет плохо посмотрел в мою сторону'),
  (3, 11, 3, 2, 2, 2, 2, 'поставил 3 !!((('),
  (4, 11, 4, 2, 2, 2, 2, 'ничсвывсвысвысвыс'),
  (5, 11, 5, 2, 2, 2, 2, 'спам это спам'),
  (6, 11, 6, 2, 2, 2, 2, '******* *** 8* 8*8 8*'),
  (7, 11, 7, 2, 2, 2, 2, 'dlmlmsmslcms'),
  (8, 11, 8, 2, 2, 2, 2, 'span'),
  (9, 11, 9, 2, 2, 2, 2, 'dncjscjsbcjs'),
  (10, 11, 10, 3, 2, 2, 2, '&***&******'),
  (11, 11, 11, 9, 2, 2, 2, '!#II#III#I#I#I#I#II'),
  (12, 11, 12, 3, 2, 2, 2, '(((((cringe'),
  (13, 11, 13, 4, 2, 2, 2, '+++++++ok'),
  (14, 11, 14, 4, 2, 2, 2, 'its oojdkjenxeknxnxncknekcnecec'),
  (15, 11, 15, 6, 2, 2, 2, 'yalublucringe');
