with CTE as (
    select 
    to_timestamp(START_TIME) as START_TIME,
    Date(to_timestamp(START_TIME)) as start_date,
    hour(to_timestamp(START_TIME)) as hour_time,
    dayname(to_timestamp(START_TIME)) as week_days,
     from {{source('demo', 'bikes')}}
)

select * from CTE