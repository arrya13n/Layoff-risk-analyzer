SELECT
    industry,
    risk_level,
    approx_percentile(laid_off_count, 0.5) AS median_layoff_count,
    COUNT(*) AS total_layoff_events
FROM "layoff-analyzer-db"."dataset"
GROUP BY industry, risk_level
ORDER BY median_layoff_count DESC;
