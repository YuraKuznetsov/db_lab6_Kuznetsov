-- Функція get_solves_count(id INT) повертає кількість збірок, які зробив користувач з переданим id
CREATE OR REPLACE FUNCTION get_solves_count(id INT)
RETURNS INT AS $$
DECLARE
    solves_count INT;
BEGIN
    SELECT COUNT(*)
    INTO solves_count
    FROM solve s
    WHERE user_id = id;

    RETURN solves_count;
END;
$$ LANGUAGE plpgsql;