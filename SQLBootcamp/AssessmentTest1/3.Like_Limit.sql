SELECT FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE FIRST_NAME LIKE 'E%' AND ADDRESS_ID < 500
ORDER BY CUSTOMER_ID DESC
LIMIT 1;