select
    pc.categoryname,
    sum(p.productcost + p.productprice) as total_cost
from {{ ref('STG_PRODUCTS') }} as p
left join {{ ref('STG_PRODUCTSUBCATEGORIES') }} as psc
    on p.productsubcategorykey = psc.productsubcategorykey
left join {{ ref('STG_PRODUCTCATEGORIES') }} as pc
    on psc.productcategorykey = pc.productcategorykey
group by pc.categoryname, psc.hej
