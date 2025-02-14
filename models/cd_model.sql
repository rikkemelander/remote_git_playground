{{ config(materialized='view') }}
select blns.a as a
from {{ ref('a_blns_model') }} as blns
