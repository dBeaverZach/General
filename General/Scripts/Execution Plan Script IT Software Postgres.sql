SELECT
    s."Department Using Software" AS Department,
    s."Software Name",
    s."Vendor Name",
    s."Total Cost",
    s."Number of Licenses",
    TO_DATE(s."Expiration Date", 'YYYY-MM-DD') AS ExpiryDate,
    TO_DATE(s."Date Purchased", 'YYYY-MM-DD') AS PurchaseDate,
    CASE 
        WHEN TO_DATE(s."Expiration Date", 'YYYY-MM-DD') - CURRENT_DATE <= 60 THEN '⚠️ Expiring Soon'
        ELSE '✅ Active'
    END AS LicenseStatus,
    d.total_spend,
    d.rank AS DepartmentRank
FROM public."IT_Software_Inventory" s
JOIN (
    SELECT 
        "Department Using Software" AS Department,
        SUM("Total Cost") AS total_spend,
        RANK() OVER (ORDER BY SUM("Total Cost") DESC) AS rank
    FROM public."IT_Software_Inventory"
    GROUP BY "Department Using Software"
) d ON s."Department Using Software" = d.Department
ORDER BY d.rank;