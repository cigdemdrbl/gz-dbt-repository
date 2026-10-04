select 
date_date
,count(distinct order_id) as nb_transactions
,round(sum(revenue),2) as revenue
,sum(qty) as total_qty
,round(sum(operasyonel_marj),2) as total_op_marj
,round(sum(sam),2) as total_sam
,round(sum(shipping_fee),2) as shipping_fee
,round(sum(log_cost),2) as loj_maliyeti
,sum(ship_cost) as ship_cost
,round((nullif(count(distinct order_id),0))/sum(revenue),4) as ort_sepet
from {{ ref("int_orders_operational") }} 
group by date_date
order by date_date