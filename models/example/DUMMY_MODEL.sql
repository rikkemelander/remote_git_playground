{{ config(materialized='view') }}
select
    dummy_col as a,
    _wayfare_created_at as b
from {{ source('wayfare', 'dummy_source_dataset') }}
