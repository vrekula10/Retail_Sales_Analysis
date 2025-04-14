WITH MonthlyMarketSales AS (
    SELECT 
        Market,
        YEAR(Order_Date) AS OrderYear,
        MONTH(Order_Date) AS OrderMonth,
        SUM(Sales) AS TotalSales
    FROM sales_data
    GROUP BY Market, YEAR(Order_Date), MONTH(Order_Date)
)
SELECT 
    Market,
    OrderYear,
    OrderMonth,
    TotalSales,
    SUM(TotalSales) OVER (PARTITION BY Market ORDER BY OrderYear, OrderMonth) AS CumulativeSales
FROM MonthlyMarketSales
ORDER BY Market, OrderYear, OrderMonth;
