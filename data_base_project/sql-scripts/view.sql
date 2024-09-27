CREATE VIEW student_reviews AS
SELECT 
    r.review_id,
    s.surname AS student_surname,
    s.name AS student_name,
    t.surname AS teacher_surname,
    t.name AS teacher_name,
    sub.name AS subject_name,
    r.knowledge,
    r.freeloading,
    r.communication,
    r.comment
FROM 
    wiki.reviews r
JOIN 
    wiki.students s ON r.student = s.student_id
JOIN 
    wiki.teachers t ON r.teacher = t.teacher_id
JOIN 
    wiki.subjects sub ON r.subject = sub.subject_id;

CREATE VIEW teacher_averages AS
SELECT 
    t.teacher_id,
    t.surname,
    t.name,
    AVG(r.knowledge) AS avg_knowledge,
    AVG(r.freeloading) AS avg_freeloading,
    AVG(r.communication) AS avg_communication
FROM 
    wiki.teachers t
LEFT JOIN 
    wiki.reviews r ON t.teacher_id = r.teacher
GROUP BY 
    t.teacher_id, t.surname, t.name;
