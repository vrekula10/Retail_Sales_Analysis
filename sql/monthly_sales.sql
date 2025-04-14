WITH MonthlySales AS (
    SELECT 
        YEAR(Order_Date) AS OrderYear,
        MONTH(Order_Date) AS OrderMonth,
        SUM(Sales) AS TotalSales
    FROM sales_data
    GROUP BY YEAR(Order_Date), MONTH(Order_Date)
)
SELECT 
    OrderYear,
    OrderMonth,
    TotalSales,
    LAG(TotalSales) OVER (ORDER BY OrderYear, OrderMonth) AS PreviousMonthSales,
    ROUND(
        (TotalSales - LAG(TotalSales) OVER (ORDER BY OrderYear, OrderMonth)) / 
        LAG(TotalSales) OVER (ORDER BY OrderYear, OrderMonth) * 100, 2
    ) AS MoM_Growth_Percentage
FROM MonthlySales;
