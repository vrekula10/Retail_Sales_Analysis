SELECT 
    Ship_Mode,
    Order_Priority,
    AVG(DATEDIFF(Ship_Date, Order_Date)) AS AvgDeliveryTime
FROM sales_data
GROUP BY Ship_Mode, Order_Priority
ORDER BY AvgDeliveryTime;
