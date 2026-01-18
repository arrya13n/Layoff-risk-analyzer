select 
    industry,
    risk_level,
    sum("laid_off_count") as total_count
from "layoff-analyzer-db"."dataset"
group by industry, risk_level
order by total_count desc;