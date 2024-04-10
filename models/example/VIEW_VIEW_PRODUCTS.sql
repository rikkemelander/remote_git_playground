{{ config(materialized='view') }}
select
    dummy_col as a,
    dummy_col as b
from {{ source('wayfare', 'dummy_source_dataset') }}
