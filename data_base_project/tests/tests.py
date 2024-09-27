import pytest
import psycopg2

def execute_sql_query(query):
    conn = psycopg2.connect(
        dbname="your_database_name",
        user="your_username",
        password="your_password",
        host="your_host",
        port="your_port"
    )
    cur = conn.cursor()
    cur.execute(query)
    rows = cur.fetchall()
    cur.close()
    conn.close()
    return rows

# Test case 1
def test_query1():
    query = "SELECT surname, name FROM wiki.Students WHERE groupa = 253 ORDER BY surname;"
    expected_result = [
        ("Афиф", "Азиз"),
        ("Газакбаев", "Ахмет"),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 2
def test_query2():
    query = "SELECT subject, AVG(knowledge) as avg_knowledge FROM wiki.Reviews WHERE student = 1 GROUP BY subject;"
    expected_result = [
        (2, 5.0),
        (3, 5.0),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 3
def test_query3():
    query = "SELECT teacher, COUNT(*) as review_count FROM wiki.Reviews GROUP BY teacher;"
    expected_result = [
        (1, 1),
        (2, 1),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 4
def test_query4():
    query = "SELECT DISTINCT student_id, surname, name FROM wiki.Students JOIN wiki.Reviews ON wiki.Students.student_id = wiki.Reviews.student WHERE subject = 2;"
    expected_result = [
        (1, "Абдуллабеков", "Магомед"),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 5
def test_query5():
    query = "SELECT DISTINCT teacher_id, surname FROM wiki.Teachers JOIN wiki.Subjects ON wiki.Teachers.department = wiki.Subjects.department WHERE wiki.Teachers.department = 2;"
    expected_result = [
        (1, "Голубев"),
        (2, "Редкозубов"),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 6
def test_query6():
    query = "SELECT student, COUNT(*) as review_count FROM wiki.Reviews WHERE teacher = 2 GROUP BY student;"
    expected_result = [
        (1, 1),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 7
def test_query7():
    query = "SELECT subject_id, COUNT(DISTINCT student) as student_count FROM wiki.Reviews JOIN wiki.Subjects ON wiki.Reviews.subject = wiki.Subjects.subject_id WHERE department = 2 GROUP BY subject_id;"
    expected_result = [
        (2, 1),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 8
def test_query8():
    query = "SELECT teachers.teacher_id, COUNT(DISTINCT subjects.subject_id) as subject_count FROM wiki.Teachers JOIN wiki.Subjects ON wiki.Teachers.department = wiki.Subjects.department WHERE wiki.Teachers.department = 2 GROUP BY teachers.teacher_id;"
    expected_result = [
        (1, 2),
        (2, 2),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 9
def test_query9():
    query = "SELECT student, COUNT(*) as review_count FROM wiki.Reviews WHERE subject = 2 GROUP BY student;"
    expected_result = [
        (1, 9),
    ]
    assert execute_sql_query(query) == expected_result

# Test case 10
def test_query10():
    query = "SELECT student, COUNT(*) as review_count FROM wiki.Reviews WHERE teacher = 2 GROUP BY student;"
    expected_result = [
        (1, 1),
    ]
    assert execute_sql_query(query) == expected_result
