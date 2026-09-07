select
    genre,
    type,
    count(distinct show_id) as total_titles
from {{ ref('int_netflix_titles_enriched') }}
group by genre, type
order by total_titles desc
