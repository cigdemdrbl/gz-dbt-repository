select
s.order_id
,s.date_date
,s.revenue
,s.quantity
,p.product_id
,p.purchase_price as purchase_price
,s.quantity*p.purchase_price as satin_alma_maliyeti
,round(s.revenue-(s.quantity*p.purchase_price),2) as marj
from {{ref("stg_raw__sales")}} as s 
left join {{ ref("stg_raw__product")}} as p 
    on s.product_id=p.product_id