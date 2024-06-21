{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    CONCAT(dummy_col, '_test') as a
from {{ source('wayfare', 'dummy_source_dataset') }}
