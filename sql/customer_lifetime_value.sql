SELECT
Customer_ID
,Customer_Name

,sum(Sales) as TotalSales
,sum(Profit) as TotalProfit
,count(DISTINCT Order_ID) as NoOfOrders
,max(Order_Date) as LastPurchasedDate
,DateDiff(curdate(), max(Order_Date)) as DaysSinceLastPurchased

from sales_data

GROUP BY
Customer_ID
,Customer_Name

ORDER BY
TotalSales DESC;