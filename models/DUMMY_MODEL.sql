{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    concat(dummy_col, 'jakls') as a
from {{ source('wayfare', 'dummy_source_dataset') }}
