{{ config(materialized='view') }}
select *
from {{ source('wayfare', 'blns_dataset') }}
