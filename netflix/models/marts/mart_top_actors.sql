select
    name as actor_name,
    count(distinct show_id) as total_appearances
from {{ ref('stg_credits') }}
where role = 'ACTOR'
group by name
order by total_appearances desc
limit 50
