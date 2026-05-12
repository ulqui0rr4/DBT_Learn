
{{ config(materialized='table') }}

with CTE as (

    select 
        to_timestamp(START_TIME) as START_TIME


        , date(to_timestamp(START_TIME)) as start_date
        , hour(to_timestamp(START_TIME)) as hour_time


    from {{ source('demo', 'bikes') }}

)


select * from CTE