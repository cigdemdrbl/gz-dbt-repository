select 
order_id
,date_date
,round(sum(revenue),2) as revenue
,sum(quantity) as quantity
,round(sum(quantity*purchase_price),2) as satin_alma_maliyeti
,round(sum(revenue-(quantity*purchase_price)),2) as marj
from {{ref("int_sales_product")}}
group by order_id,date_date