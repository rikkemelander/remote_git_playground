{{ config(materialized='view') }}
select d.b
from {{ ref('MODEL_2') }} as d
