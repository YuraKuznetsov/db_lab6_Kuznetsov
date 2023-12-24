-- Run the function
SELECT get_solves_count(1) AS solves_count_for_user_1;

-- Old message
SELECT *
FROM news
WHERE news_id = 1;

-- Run the procedure to update news content (and trigger will capitalize the first letter)
CALL update_news_content(1, 'updated news content');

-- Updated message with capitalized first letter
SELECT *
FROM news
WHERE news_id = 1;