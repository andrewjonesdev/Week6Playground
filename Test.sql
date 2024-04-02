SELECT 
    [Person ID] =  P.[BusinessEntityID],
    LOWER(P.[Title]),
    UPPER(P.[FirstName]) [First Name], 
    P.[LastName] AS [Last Name],
    [Middle Name] = P.[MiddleName],
    P.[Suffix],
    PH.[PhoneNumber]
FROM [Person].[Person] P
JOIN [Person].[PersonPhone] PH ON P.[BusinessEntityID] = PH.[BusinessEntityID]
WHERE P.[Title] IS NOT NULL
AND P.[MiddleName] IS NOT NULL
ORDER BY P.[LastName] ASC, P.[FirstName] ASC

SELECT 
    DATEADD( d, -5, GETDATE()) [Start Date],
    DATEFROMPARTS(2022, 05, 31) AS [End Date],
    [Days Between Dates] = DATEDIFF(d, DATEFROMPARTS(2022, 05, 31), DATEADD( d, -5, GETDATE())),
    MONTH(GETDATE()),
    DAY(GETDATE()),
    YEAR(GETDATE())

SELECT
    SQRT(16),
    ABS(-5),
    ROUND(6.7, 0)


select 
BusinessEntityID AS [ID], 
PhoneNumber [Phone Number]

 FROM person.personphone


 
 SELECT 
    P.ProductID,
    P.[Name],
    P.ProductNumber,
    P.Color,
    P.ProductModelID,
    P.ProductSubcategoryID,
    PM.[Name] [Product Model], 
    PS.[Name] [Product Subcategory] 
 FROM Production.Product P
 LEFT JOIN Production.ProductModel PM ON P.ProductModelID = PM.ProductModelID 
 left join production.ProductSubcategory PS ON p.ProductSubcategoryID = PS.ProductSubcategoryID
 WHERE p.Color is not NULL
 AND p.Color LIKE 'b%'
 order by p.Color DESC, p.Name ASC
 
 