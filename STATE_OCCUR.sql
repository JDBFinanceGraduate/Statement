CREATE TABLE keyword_counts (
  keyword VARCHAR(255),
  count INT
);

INSERT INTO keyword_counts (keyword, count)
SELECT 'twitch', COUNT(*) AS count
FROM statev2
WHERE description LIKE '%twitch%'
UNION
SELECT 'kroger', COUNT(*)
FROM statev2
WHERE description LIKE '%kroger%'
UNION
SELECT 'panda express', COUNT(*)
FROM statev2
WHERE description LIKE '%panda express%'
UNION
SELECT 'wingstop', COUNT(*)
FROM statev2
WHERE description LIKE '%wingstop%'
UNION
SELECT 'haircut', COUNT(*)
FROM statev2
WHERE description LIKE '%haircut%';
