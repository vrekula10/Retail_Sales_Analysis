SELECT
Category
,Sub_Category
,sum(Sales) as TotalSales
,sum(Profit) as TotalProfit
,round(sum(profit) / sum(Sales) * 100, 2) as ProfitPercentage
,round(sum(Shipping_Cost) / sum(Sales) * 100, 2) as ShippingCostPercentage

from sales_data

GROUP BY
Category
,Sub_Category

ORDER BY
ProfitPercentage DESC;