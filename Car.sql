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
    [Service_Center] INTO MASTER_CAR_DATA
FROM dbo.Car
LEFT JOIN dbo.Insurance ON Car.Car_ID = Insurance.Car_ID
LEFT JOIN dbo.Owners ON Owners.Car_ID = Car.Car_ID
LEFT JOIN dbo.Sales ON Sales.Car_ID = Car.Car_ID
LEFT JOIN dbo.Service_History ON Service_History.Car_ID = Car.Car_ID;
