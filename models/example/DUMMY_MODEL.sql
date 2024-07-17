{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    CONCAT(dummy_col, 'HEJ') as a
from {{ source('wayfare', 'dummy_source_dataset') }}
