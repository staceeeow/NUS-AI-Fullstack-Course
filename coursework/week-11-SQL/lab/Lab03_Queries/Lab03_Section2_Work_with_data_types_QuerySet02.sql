/* Compare plain CAST vs guarded CAST on the Size column.
   Size mixes numeric (58, 62) and letter (S, M, L) values. */
SELECT Name,
       Size,
       CAST(Size AS SIGNED) AS NumericSizeIncorrect,  -- 'M' becomes 0, with a warning
       CASE WHEN Size REGEXP '^[0-9]+$' THEN CAST(Size AS SIGNED)
            ELSE NULL  -- non-numeric sizes return NULL, like TRY_CAST in SQL Server
       END AS NumericSizeCorrected
FROM SalesLT.Product;