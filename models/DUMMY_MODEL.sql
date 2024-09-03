{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    concat(dummy_col, 'test') as a
from {{ source('wayfare', 'dummy_source_dataset') }}
