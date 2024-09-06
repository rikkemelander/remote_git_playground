{{ config(materialized='view') }}
select
    _wayfare_created_at as b,
    dummy_col as a
from {{ source('wayfare', 'dummy_source_dataset') }}
