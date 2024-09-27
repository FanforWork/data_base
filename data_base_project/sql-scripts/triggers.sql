CREATE TRIGGER review_insert_trigger
AFTER INSERT ON wiki.reviews
FOR EACH ROW
EXECUTE FUNCTION review_insert_function();

CREATE TRIGGER check_rating_trigger
BEFORE INSERT ON wiki.reviews
FOR EACH ROW
EXECUTE FUNCTION check_rating_function();

CREATE TRIGGER update_avg_knowledge_trigger
AFTER INSERT ON wiki.reviews
FOR EACH ROW
EXECUTE FUNCTION update_avg_knowledge_trigger_function();
