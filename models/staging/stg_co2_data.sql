{{ config(materialized='view') }}

with source as (

    select * from {{ source('staging', 'dl_co2_data') }}
)
select 
    *,
    current_timestamp() as ingestion_timestamp
from source


