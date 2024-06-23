select
    products.modelname as modelname,
    products.productcolor as productcolor,
    products.productdescription as productdescription,
    products.productkey as productkey,
    products.productname as productname,
    products.productprice as productprice,
    products.productsize as productsize,
    products.productsku as productsku,
    products.productstyle as productstyle,
    products.productsubcategorykey as productsubcategorykey,
    products._wayfare_created_at as _wayfare_created_at,
    products._wayfare_updated_at as _wayfare_updated_at
from {{ source('wayfare', 'PRODUCTS') }} as products
