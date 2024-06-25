SELECT season , title
FROM episodes
WHERE id IN (
    SELECT MIN (id)
    FROM episodes
    GROUP BY season
);

