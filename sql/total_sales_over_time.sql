SELECT

YEAR(Order_Date) as OrderYear
,Month(Order_Date) as OrderMonth
,sum(Sales) as TotalSales

from sales_data

GROUP BY YEAR(Order_Date) 
,Month(Order_Date) 
ORDER BY OrderYear, OrderMonth;


