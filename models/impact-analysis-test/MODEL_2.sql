{{ config(materialized='view') }}
select count(dummy_col) as a
from {{ source('wayfare', 'dummy_source_dataset') }}
