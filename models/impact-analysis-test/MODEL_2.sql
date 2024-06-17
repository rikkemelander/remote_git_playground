{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    dummy_col::int + 1 as a
from {{ source('wayfare', 'dummy_source_dataset') }}
