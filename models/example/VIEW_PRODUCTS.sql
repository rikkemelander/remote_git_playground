{{ config(materialized='view') }}
select *
from {{ source('wayfare', 'PGSOURCE__SOURCE__PRODUCTCATEGORIES') }}
