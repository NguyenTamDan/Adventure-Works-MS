-- Cleansed DIM_DateTable --
SELECT TOP (1000) [DateKey]
      ,[FullDateAlternateKey] as Date
      --,[DayNumberOfWeek]

      ,[EnglishDayNameOfWeek] as Day
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]

      ,[WeekNumberOfYear] as WeekNo
      ,[EnglishMonthName] as Month
	  , left([EnglishMonthName],3) as MonthShort
      --,[SpanishMonthName]
      --,[FrenchMonthName]

      ,[MonthNumberOfYear] as YearNo
      ,[CalendarQuarter] as Quater
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]

  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  where CalendarYear >= 2019