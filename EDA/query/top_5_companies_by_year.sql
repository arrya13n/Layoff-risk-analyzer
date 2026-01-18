SELECT
    year,
    company,
    total_layoff
FROM (
    SELECT
        year(CAST("date" AS DATE)) AS year,
        company,
        SUM(laid_off_count) AS total_layoff,
        ROW_NUMBER() OVER (
            PARTITION BY year(CAST("date" AS DATE))
            ORDER BY SUM(laid_off_count) DESC
        ) AS rn
    FROM "layoff-analyzer-db"."dataset"
    GROUP BY year(CAST("date" AS DATE)), company
)
WHERE rn <= 5
ORDER BY year DESC, total_layoff DESC;
