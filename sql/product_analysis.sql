SELECT 
    a.Product_ID AS Product1,
    b.Product_ID AS Product2,
    COUNT(*) AS Frequency
FROM sales_data a
JOIN sales_data b 
  ON a.Order_ID = b.Order_ID 
 AND a.Product_ID < b.Product_ID
GROUP BY Product1, Product2
ORDER BY Frequency DESC
LIMIT 20;
