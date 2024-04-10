select
    s.a as b,
    s.a || s.b as a
from {{ ref('VIEW_VIEW_PRODUCTS.sql') }} as s
