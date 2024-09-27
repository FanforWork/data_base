CREATE OR REPLACE PROCEDURE add_review (
    student_id INT,
    teacher_id INT,
    subject_id INT,
    knowledge INT,
    freeloading INT,
    communication INT,
    comment VARCHAR(100)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO wiki.reviews (student, teacher, subject, knowledge, freeloading, communication, comment)
    VALUES (student_id, teacher_id, subject_id, knowledge, freeloading, communication, comment);
END;
$$;
-- 
CREATE OR REPLACE FUNCTION check_rating_function() RETURNS TRIGGER AS $$
BEGIN
    IF NEW.knowledge < 1 OR NEW.knowledge > 5 THEN
        RAISE EXCEPTION 'Knowledge rating must be between 1 and 5';
    END IF;
    IF NEW.freeloading < 1 OR NEW.freeloading > 5 THEN
        RAISE EXCEPTION 'Freeloading rating must be between 1 and 5';
    END IF;
    IF NEW.communication < 1 OR NEW.communication > 5 THEN
        RAISE EXCEPTION 'Communication rating must be between 1 and 5';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- 
CREATE OR REPLACE FUNCTION review_insert_function() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO wiki.review_history (review_id, student, teacher, subject, knowledge, freeloading, communication, comment)
    VALUES (NEW.review_id, NEW.student, NEW.teacher, NEW.subject, NEW.knowledge, NEW.freeloading, NEW.communication, NEW.comment);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
-- 
CREATE OR REPLACE FUNCTION get_avg_knowledge_teacher (teacher_id INT) RETURNS FLOAT
LANGUAGE plpgsql
AS $$
DECLARE
    avg_knowledge FLOAT;
BEGIN
    SELECT AVG(knowledge) INTO avg_knowledge
    FROM wiki.reviews
    WHERE teacher = teacher_id;
    
    RETURN avg_knowledge;
END;
$$;

CREATE OR REPLACE FUNCTION update_avg_knowledge_trigger_function()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE teachers
    SET avg_knowledge = get_avg_knowledge_teacher(NEW.teacher_id)
    WHERE id = NEW.teacher_id;
    RETURN NEW;
END;
$$;