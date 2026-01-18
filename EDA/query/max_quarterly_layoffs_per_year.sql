SELECT "Year", "Quarter", "Max_Quarterly_Layoffs"
FROM (
    SELECT 
        EXTRACT(year FROM CAST("Date" AS DATE)) AS "Year",
        'Q' || CAST(EXTRACT(quarter FROM CAST("Date" AS DATE)) AS VARCHAR) AS "Quarter",
        SUM("Laid_Off_Count") AS "Max_Quarterly_Layoffs",
        ROW_NUMBER() OVER(
            PARTITION BY EXTRACT(year FROM CAST("Date" AS DATE)) 
            ORDER BY SUM("Laid_Off_Count") DESC
        ) AS "Rank"
    FROM "layoff-analyzer-db"."dataset"
    GROUP BY 1, 2
)
WHERE "Rank" = 1
ORDER BY "Year" DESC;