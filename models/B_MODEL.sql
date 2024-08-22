{{ config(materialized='view') }}
select d.a
from {{ ref('DUMMY_MODEL') }} as d
