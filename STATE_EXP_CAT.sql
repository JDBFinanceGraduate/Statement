ALTER TABLE statev2
ADD COLUMN exp_category VARCHAR(255) DEFAULT NULL;

UPDATE statev2
SET exp_category = 'ENTERTAINMENT'
WHERE description LIKE '%Twitch%'
   OR description LIKE '%Patreon%'
   OR description LIKE '%Studio Movie Grill%'
   OR description LIKE '%Playstation%'
   OR description LIKE '%YouTube%';
