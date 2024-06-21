select
    pc.categoryname,
    sum(p.productcost + p.productprice) as total_cost
from {{ source('wayfare', 'PRODUCTS') }} as p
left join {{ source('wayfare', 'PRODUCTSUBCATEGORIES') }} as psc
    on p.productsubcategorykey = psc.productsubcategorykey
left join {{ source('wayfare', 'PRODUCTCATEGORIES') }} as pc
    on psc.productcategorykey = pc.productcategorykey
group by pc.categoryname
