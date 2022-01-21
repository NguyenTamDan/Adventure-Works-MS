-- Cleansed DIM_InternetSales --
SELECT TOP (1000) [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      /*,[PromotionKey]
      ,[CurrencyKey]
      ,[SalesTerritoryKey] */
      ,[SalesOrderNumber]
      /*,[SalesOrderLineNumber]
      ,[RevisionNumber]
      ,[OrderQuantity]
      ,[UnitPrice]
      ,[ExtendedAmount]
      ,[UnitPriceDiscountPct]
      ,[DiscountAmount]
      ,[ProductStandardCost]
      ,[TotalProductCost]*/
      ,[SalesAmount]
      /*,[TaxAmt]
      ,[Freight]
      ,[CarrierTrackingNumber]
      ,[CustomerPONumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]*/
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where left(OrderDateKey, 4) >= year(getdate()) - 2 -- two years of date
  order by OrderDateKey
  
  