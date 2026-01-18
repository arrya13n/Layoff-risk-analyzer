select
    year,
    country,
    total_layoff
from (
    select
        extract(year from CAST("date" AS DATE)) as "year",
        "country",
        sum("laid_off_count") as "total_layoff",
        row_number() over(
            partition by extract(year from CAST("date" AS DATE))
            order by sum("laid_off_count") desc
        ) as "rank"
    from "layoff-analyzer-db"."dataset"
    group by extract(year from CAST("date" AS DATE)), "country"
)
where "rank" <= 5
order by "year" desc, "total_layoff" desc;