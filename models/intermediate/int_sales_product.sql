select
s.*,
p.purchase_price as purchase_price
from {{ref("stg_raw__sales")}} as s 
join {{ ref("stg_raw__product")}} as p 
    on s.product_id=p.product_id
