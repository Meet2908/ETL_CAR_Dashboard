📊 Top Car-Service Dashboard — ETL with SQL & Power BI
🧾 Project Summary
This project demonstrates a full ETL (Extract, Transform, Load) process using SQL to build a consolidated MASTER_CAR_DATA table from multiple source tables in a car dealership/service database. The final dataset powers an interactive Power BI dashboard to analyze car data, service patterns, sales performance, fuel types, and transmission trends.

💡 Objective
To design a unified car-service data model that integrates sales, ownership, insurance, and service history into a single source of truth (MASTER_CAR_DATA) using SQL joins. This dataset is then visualized in Power BI for actionable insights.

🗃️ Source Tables
Car: Contains basic car details.

Insurance: Insurance policy info per car.

Owners: Owner and contact information.

Sales: Sale price and buyer details.

Service_History: Maintenance and service data.

🛠️ ETL Process (SQL)
sql
Copy
Edit
USE car;

SELECT 
    car.[Car_ID],
    [Brand],
    [Model],
    [Year],
    [Fuel_Type],
    [Transmission],
    [Color],
    [Owner_Type],
    [Mileage_kmpl],
    [Price_Lakh],
    [Provider],
    [Policy_Number],
    [Expiry_Date],
    [Status],
    [Owner_Name],
    [Contact],
    [City],
    [Purchase_Year],
    [Sale_Price_Lakh],
    [Sale_Date],
    [Buyer_Name],
    [Service_Type],
    [Service_Date],
    [Service_Cost],
    [Service_Center]
INTO MASTER_CAR_DATA
FROM dbo.Car
LEFT JOIN dbo.Insurance ON Car.Car_ID = Insurance.Car_ID
LEFT JOIN dbo.Owners ON Owners.Car_ID = Car.Car_ID
LEFT JOIN dbo.Sales ON Sales.Car_ID = Car.Car_ID
LEFT JOIN dbo.Service_History ON Service_History.Car_ID = Car.Car_ID;
✔ Uses LEFT JOIN to ensure no loss of car records
✔ Consolidates service, sales, and ownership into one flat table for analysis

📈 Power BI Dashboard Features
Dashboard Title: Top Car-Service

Key Metrics (Cards)
Total Cars: 50.00K

Total Sales: 1.30M

Total Brands: 10

Total Fuel Types: 5

Total Models: 10

Visuals
Bar Chart: Car distribution by fuel type (Diesel, Electric, CNG, etc.)

Pie Chart: Manual vs Automatic transmission split

Column Chart: Sales by Year (2022–2024)

Donut Chart: Count by Car Model (City, Swift, Creta, etc.)

🧠 Insights Generated
Diesel and Electric cars are the most common.

Sales were highest in 2022; significant drop in 2024.

Nearly equal split between manual and automatic transmissions.

All models have nearly equal market representation (~10%).

🔍 Tools & Technologies
SQL Server: Data integration and transformation

Power BI: Data modeling and dashboarding

ETL Concepts: Schema design, data joins, master table creation

📌 Learning Outcomes
Executed complete data pipeline in SQL

Designed a unified data source for BI tools

Built dynamic dashboard visuals for operational and strategic insights

Applied real-world data modeling best practices

