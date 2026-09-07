select show_id, release_year
from {{ ref('stg_netflix_titles') }}
where release_year > extract(year from current_date())
