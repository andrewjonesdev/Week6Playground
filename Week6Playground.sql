SELECT
    [Department Id] = [DepartmentID],
    [Department Name] = [Name],
    [Group Name] = [GroupName],
    [Modified Date] = [ModifiedDate]
FROM [HumanResources].[Department]

WHERE [Department].[GroupName] = 'Executive General and Administration'
-- WHERE D.[Name] LIKE 'Production%'
AND [Department].[Name] LIKE 'F%'