CREATE OR REPLACE FUNCTION log_document_changes()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        INSERT INTO documents_changelog (document_id, new_data)
        VALUES (NEW.id, NEW.data);
    ELSIF TG_OP = 'UPDATE' THEN
        INSERT INTO documents_changelog (document_id, old_data, new_data)
        VALUES (NEW.id, OLD.data, NEW.data);
    ELSIF TG_OP = 'DELETE' THEN
        INSERT INTO documents_changelog (document_id, old_data)
        VALUES (OLD.id, OLD.data);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER document_changes_trigger
AFTER INSERT OR UPDATE OR DELETE ON documents
FOR EACH ROW
EXECUTE FUNCTION log_document_changes();
