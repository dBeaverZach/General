-- Step 1: Common Table Expression for Base Cleanup
WITH CleanedSoftware AS (
    SELECT 
        `Software_Name`,
        `Vendor_Name`,
        `Vendor_Point_of_Contact`,
        `Total_Cost`,
        `Cost_Per_User`,
        `Number_of_Licenses`,
        CAST(`Date_Purchased` AS DATE) AS PurchaseDate,
        CAST(`Expiration_Date` AS DATE) AS ExpiryDate,
        `Department_Using_Software` AS Department,
        `License_Type`
    FROM IT_Software_Inventory
),

-- Step 2: Aggregate spend per department and rank them
DepartmentSpend AS (
    SELECT
        Department,
        SUM(`Total_Cost`) AS TotalSpend,
        RANK() OVER (ORDER BY SUM(`Total_Cost`) DESC) AS SpendRank
    FROM CleanedSoftware
    GROUP BY Department
),

-- Step 3: Rank vendors by number of licenses sold
VendorLicenses AS (
    SELECT
        `Vendor_Name`,
        SUM(`Number_of_Licenses`) AS TotalLicenses,
        ROW_NUMBER() OVER (ORDER BY SUM(`Number_of_Licenses`) DESC) AS LicenseRank
    FROM CleanedSoftware
    GROUP BY `Vendor_Name`
),

-- Step 4: Case Statements; Flag upcoming expirations within the next 60 days
ExpiringSoon AS (
    SELECT
        *,
        CASE 
            WHEN DATEDIFF(ExpiryDate, CURRENT_DATE()) <= 60 THEN '⚠️ Expiring Soon'
            ELSE '✅ Active'
        END AS LicenseStatus
    FROM CleanedSoftware
)

-- Step 5: Final result combining all above
SELECT
    E.Department,
    E.`Software_Name`,
    E.`Vendor_Name`,
    E.`Total_Cost`,
    E.`Number_of_Licenses`,
    DS.TotalSpend,
    DS.SpendRank,
    VL.TotalLicenses,
    VL.LicenseRank,
    E.ExpiryDate,
    E.LicenseStatus
FROM ExpiringSoon E
LEFT JOIN DepartmentSpend DS ON E.Department = DS.Department
LEFT JOIN VendorLicenses VL ON E.`Vendor_Name` = VL.`Vendor_Name`
ORDER BY DS.SpendRank, VL.LicenseRank;
