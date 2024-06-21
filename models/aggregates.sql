select
    pc.categoryname,
    sum(p.productcost + p.productprice) as total_cost
from {{ ref('stg_products') }} as p
left join {{ ref('stg_productsubcategories') }} as psc
    on p.productsubcategorykey = psc.productsubcategorykey
left join {{ ref('stg_productcategories') }} as pc
    on psc.productcategorykey = pc.productcategorykey
group by pc.categoryname
