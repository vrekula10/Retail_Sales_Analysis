import pandas as pd
import mysql.connector
from mysql.connector import Error

# === 1. Loading CSV ===
csv_file = '/Users/vinuthnareddy/Desktop/GitHub Project/Retail_Sales_Analysis/data/raw/Global_Superstore2.csv'
df = pd.read_csv(csv_file, encoding='latin1')

df['Order Date'] = pd.to_datetime(df['Order Date'], format='%d-%m-%Y', errors='coerce').dt.strftime('%Y-%m-%d')
df['Ship Date'] = pd.to_datetime(df['Ship Date'], format='%d-%m-%Y', errors='coerce').dt.strftime('%Y-%m-%d')

# Handle invalid dates (optional, for bad data safety)
df = df.dropna(subset=['Order Date', 'Ship Date'])

# === 2. Database connection details ===
host = 'localhost'
user = 'root'  
password = 'Devi@692908'  
database = 'retail_sales_db'

try:
    # Connecting to MySQL
    connection = mysql.connector.connect(
        host=host,
        user=user,
        password=password,
        database=database
    )

    if connection.is_connected():
        print('✅ Connected to MySQL database')

        cursor = connection.cursor()


        insert_sql = """
        INSERT INTO sales_data (
            Row_ID, Order_ID, Order_Date, Ship_Date, Ship_Mode,
            Customer_ID, Customer_Name, Segment, City, State,
            Country, Postal_Code, Market, Region, Product_ID,
            Category, Sub_Category, Product_Name, Sales, Quantity,
            Discount, Profit, Shipping_Cost, Order_Priority
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """

        # Insert data row by row
        for idx, row in df.iterrows():
            data = tuple(None if pd.isna(x) else x for x in row) 
            cursor.execute(insert_sql, data)

            if idx % 100 == 0:
                connection.commit()  # Commit every 100 rows

        # Final commit
        connection.commit()
        print('✅ Data inserted successfully')

except Error as e:
    print(f'❌ Error: {e}')

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print('✅ MySQL connection closed')
