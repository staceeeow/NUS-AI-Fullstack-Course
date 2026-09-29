SELECT
    pcat.Name AS ParentCategory,
    cat.Name  AS SubCategory,
    p.Name    AS ProductName
FROM saleslt.product AS p
    JOIN saleslt.productcategory AS cat
        ON p.ProductCategoryID = cat.ProductCategoryID
    JOIN saleslt.productcategory AS pcat
        ON cat.ParentProductCategoryID = pcat.ProductCategoryID
ORDER BY ParentCategory, SubCategory, ProductName;