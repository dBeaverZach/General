WITH CleanedSoftware AS (
    SELECT 
        "Software Name",
        "Vendor Name",
        "Vendor Point of Contact",
        "Total Cost",
        "Cost Per User",
        "Number of Licenses",
        TO_DATE("Date Purchased", 'YYYY-MM-DD') AS PurchaseDate,
        TO_DATE("Expiration Date", 'YYYY-MM-DD') AS ExpiryDate,
        "Department Using Software" AS Department,
        "License Type"
    FROM public."IT_Software_Inventory"
),

DepartmentSpend AS (
    SELECT
        Department,
        SUM("Total Cost") AS TotalSpend,
        RANK() OVER (ORDER BY SUM("Total Cost") DESC) AS SpendRank
    FROM CleanedSoftware
    GROUP BY Department
),

VendorLicenses AS (
    SELECT
        "Vendor Name",
        SUM("Number of Licenses") AS TotalLicenses,
        ROW_NUMBER() OVER (ORDER BY SUM("Number of Licenses") DESC) AS LicenseRank
    FROM CleanedSoftware
    GROUP BY "Vendor Name"
),

ExpiringSoon AS (
    SELECT
        *,
        CASE 
            WHEN ExpiryDate IS NOT NULL AND (ExpiryDate - CURRENT_DATE <= 60) THEN '⚠️ Expiring Soon'
            ELSE '✅ Active'
        END AS LicenseStatus
    FROM CleanedSoftware
)

SELECT
    E.Department,
    E."Software Name",
    E."Vendor Name",
    E."Total Cost",
    E."Number of Licenses",
    E.PurchaseDate,
    E.ExpiryDate,
    DS.TotalSpend,
    DS.SpendRank,
    VL.TotalLicenses,
    VL.LicenseRank,
    E.LicenseStatus
FROM ExpiringSoon E
LEFT JOIN DepartmentSpend DS ON E.Department = DS.Department
LEFT JOIN VendorLicenses VL ON E."Vendor Name" = VL."Vendor Name"
ORDER BY DS.SpendRank, VL.LicenseRank;
