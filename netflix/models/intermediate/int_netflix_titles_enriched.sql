with titles as (
    select * from {{ ref('stg_netflix_titles') }}
),

split_genres as (
    select
        show_id,
        type,
        title,
        director,
        cast_members,
        country,
        date_added,
        release_year,
        rating,
        duration,
        trim(value) as genre,
        description
    from titles,
    lateral split_to_table(titles.genre, ',')
)

select * from split_genres
