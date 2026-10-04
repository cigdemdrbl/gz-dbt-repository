select 
date_date,
order_id,
round(sum(revenue - purchase_price),2) as margin
from {{ref("int_sales_product")}}
group by date_date,order_id