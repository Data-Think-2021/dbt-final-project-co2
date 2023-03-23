{{ config(materialized='view') }}

with source as (

    select * from {{ source('core', 'stg_co2_data') }}
)
select 
    *
from source


