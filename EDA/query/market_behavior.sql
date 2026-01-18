SELECT 
    industry,
    COUNT(*) AS frequent_layoff,
    round(AVG(laid_off_count),2) AS avg_layoff,
    CASE 
        WHEN round(AVG(laid_off_count),2) > 500 THEN 'Structural Resets'
        WHEN COUNT(*) < 150 AND round(AVG(laid_off_count),2) > 150 THEN 'Incremental Adjustments'
        ELSE 'Standard Adjustment'
    END AS "Market_Behavior"
FROM "layoff-analyzer-db"."dataset"
GROUP BY industry
ORDER BY frequent_layoff DESC;