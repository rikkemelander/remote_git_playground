{{ config(materialized='view') }}
select d.b
from {{ ref('DUMMY_MODEL') }} as d
