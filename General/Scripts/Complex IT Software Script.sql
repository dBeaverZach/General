-- Step 1: Common Table Expression for Base Cleanup
WITH CleanedSoftware AS (
    SELECT 
        [Software Name],
        [Vendor Name],
        [Vendor Point of Contact],
        [Total Cost],
        [Cost Per User],
        [Number of Licenses],
        CAST([Date Purchased] AS DATE) AS PurchaseDate,
        CAST([Expiration Date] AS DATE) AS ExpiryDate,
        [Department Using Software] AS Department,
        [License Type]
    FROM IT_Software_Inventory
),

-- Step 2: Aggregate spend per department and rank them
DepartmentSpend AS (
    SELECT
        Department,
        SUM([Total Cost]) AS TotalSpend,
        RANK() OVER (ORDER BY SUM([Total Cost]) DESC) AS SpendRank
    FROM CleanedSoftware
    GROUP BY Department
),

-- Step 3: Rank vendors by number of licenses sold
VendorLicenses AS (
    SELECT
        [Vendor Name],
        SUM([Number of Licenses]) AS TotalLicenses,
        ROW_NUMBER() OVER (ORDER BY SUM([Number of Licenses]) DESC) AS LicenseRank
    FROM CleanedSoftware
    GROUP BY [Vendor Name]
),

-- Step 4: Case Statements; Flag upcoming expirations within the next 60 days
ExpiringSoon AS (
    SELECT
        *,
        CASE 
            WHEN DATEDIFF(DAY, GETDATE(), ExpiryDate) <= 60 THEN '⚠️ Expiring Soon'
            ELSE '✅ Active'
        END AS LicenseStatus
    FROM CleanedSoftware
)

-- Step 5: Final result combining all above
SELECT
    E.Department,
    E.[Software Name],
    E.[Vendor Name],
    E.[Total Cost],
    E.[Number of Licenses],
    DS.TotalSpend,
    DS.SpendRank,
    VL.TotalLicenses,
    VL.LicenseRank,
    E.ExpiryDate,
    E.LicenseStatus
FROM ExpiringSoon E
LEFT JOIN DepartmentSpend DS ON E.Department = DS.Department
LEFT JOIN VendorLicenses VL ON E.[Vendor Name] = VL.[Vendor Name]
ORDER BY DS.SpendRank, VL.LicenseRank;
