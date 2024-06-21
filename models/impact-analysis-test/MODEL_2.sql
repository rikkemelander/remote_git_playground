{{ config(materialized='view') }}
select CONCAT(dummy_col, '_test') as a
from {{ source('wayfare', 'dummy_source_dataset') }}
