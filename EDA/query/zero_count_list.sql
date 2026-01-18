SELECT "company", "industry", "country", "date"
FROM "layoff-analyzer-db"."dataset"
WHERE "risk_level" = 'High' AND "laid_off_count" = 0
ORDER BY "date" DESC;