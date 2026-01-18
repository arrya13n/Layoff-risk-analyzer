select 
    country,
    count(distinct company) as company_count,
    ceil(avg(laid_off_count)) as avg_layoff
from "layoff-analyzer-db"."dataset"
group by country
having count(distinct company) > 25
order by company_count desc;