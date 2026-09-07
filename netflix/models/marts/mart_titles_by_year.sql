select
    release_year,
    type,
    count(distinct show_id) as total_titles
from {{ ref('stg_netflix_titles') }}
group by release_year, type
order by release_year desc
