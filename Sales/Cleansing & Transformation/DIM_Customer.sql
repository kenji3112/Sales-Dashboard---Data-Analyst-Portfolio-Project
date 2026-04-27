SELECT 
  c.[CustomerKey] as CustomerKey --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  [FirstName] as [First Name] --,[MiddleName]
  , 
  [LastName] as [Last Name], 
  -- Combined First and Last Name
  [FirstName] + ' ' + [LastName] as [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender, 
  --[Gender]
  --[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase] as DateFirstPurchased, 
  --,c.[CommuteDistance]
  g.city as [Customer City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] as c 
  LEFT join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
Order By 
  CustomerKey ASC
