-- Процедура оновлює вміст новини з переданим id
CREATE OR REPLACE PROCEDURE update_news_content(id INT, new_content VARCHAR)
LANGUAGE plpgsql AS $$
BEGIN
    UPDATE news
    SET content = new_content
    WHERE news_id = id;
END;
$$;