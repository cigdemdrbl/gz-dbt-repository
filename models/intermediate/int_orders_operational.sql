select 
s.order_id
,m.date_date
,m.marj+s.shipping_fee-s.log_cost-s.ship_cost as operasyonel_marj
from {{ref("int_orders_margin")}} as m
left join {{ref("stg_raw__ship")}} as s
on s.order_id=m.order_id 