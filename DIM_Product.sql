-- Cleansed DIM_ProductTable --
SELECT [ProductKey]
      ,[ProductAlternateKey] as AlternateKey
      ,p.[ProductSubcategoryKey] as SubcategoryKey
	  , ps.EnglishProductSubcategoryName as SubcategoryName
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] as ProductName
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      ,[ListPrice]
      ,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      ,[Class]
      ,[Style]
      ,[ModelName]
     /** ,[LargePhoto]
      ,[EnglishDescription]
      ,[FrenchDescription]
      ,[ChineseDescription]
      ,[ArabicDescription]
      ,[HebrewDescription]
      ,[ThaiDescription]
      ,[GermanDescription]
      ,[JapaneseDescription]
      ,[TurkishDescription] 
      ,[StartDate]
      ,[EndDate] **/
      ,isnull (p.Status, 'Outdated') as Status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  Left join dbo.DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey