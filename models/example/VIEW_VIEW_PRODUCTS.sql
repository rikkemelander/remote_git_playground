{{ config(materialized='view') }}
select *
from {{ ref('HIQOEWRKLWEKQHRKLWEHRLKWETHLKWQERHKLHWREKQLEWRHWEQRKRLEHKWQ') }}
