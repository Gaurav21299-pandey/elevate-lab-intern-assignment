  select * from order_details
  select * from list_of_order
  select * from monthly_sales_target

  Using the Sales Target dataset, calculate the percentage change in target sales
for the Furniture category month-over-month.


select  *,
        lag(Target,1,0) over(order by CAST('01-' + Month_of_Order_Date AS DATE)) as previous_months_target ,
        round((Target-lag(Target,1,0) over(order by CAST('01-' + Month_of_Order_Date AS DATE)))
       *100/NULLIF(lag(Target,1,0) over(order by CAST('01-' + Month_of_Order_Date AS DATE)),0),2) as percentage_change_in_target_sales
FROM 
      monthly_sales_target
WHERE 
     Category = 'Furniture'

	 SELECT *,
       LAG(Target, 1, 0) OVER (ORDER BY CAST('01-' + Month_of_Order_Date AS DATE)) AS previous_months_target,
       ROUND(
           (Target - LAG(Target, 1, 0) OVER (ORDER BY CAST('01-' + Month_of_Order_Date AS DATE)))
           * 100.0 / NULLIF(LAG(Target, 1, 0) OVER (ORDER BY CAST('01-' + Month_of_Order_Date AS DATE)), 0), 2
       ) AS percentage_change_in_target_sales
FROM monthly_sales_target
WHERE Category = 'Furniture'
ORDER BY CAST('01-' + Month_of_Order_Date AS DATE);





Merge the List of Orders and Order Details datasets on the basis of Order ID.
Calculate the total sales (Amount) for each category across all orders.




select * 
from 
   list_of_order l
join 
   order_details d 
on l.Order_ID=d.Order_ID







Calculate the total sales (Amount) for each category across all orders



select Category,
       SUM(Amount) as total_sales
from 
    list_of_order
group by Category
order by 
    total_sales desc




For each category, calculate the average profit per order and total profit margin
(profit as a percentage of Amount).



select Category,
       round(AVG(Profit),2) as average_profit ,
       round(sum(Profit)/sum(Amount)*100,2) as total_profit_margin
from 
     list_of_order
group by Category
order by 
        total_profit_margin desc


From the List of Orders dataset, identify the top 5 states with the highest order
count. For each of these states, calculate the total sales and average profit.

select  d.State,
        count(l.Order_ID) no_of_order,
        sum(l.Amount) as Total_sales ,
        round(AVG(l.Profit),2) as average_profit
from 
    list_of_order l
join 
    order_details d 
    on l.Order_ID=d.Order_ID
group by d.State
order by 
     Total_sales desc

	 

SELECT TOP 5 
    d.State,
    COUNT(l.Order_ID) AS No_Of_Orders,
    SUM(l.Amount) AS Total_Sales,
    ROUND(AVG(l.Profit), 2) AS Average_Profit
FROM 
    list_of_order AS l
INNER JOIN 
    order_details AS d 
    ON l.Order_ID = d.Order_ID
GROUP BY 
    d.State
ORDER BY 
    SUM(l.Amount) ASC, 
    AVG(l.Profit) DESC;