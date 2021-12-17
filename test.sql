SELECT account_created_date AS date,
       lead_source,
       COUNT(account_created_date) accounts_created,
       COUNT(NULL) AS first_login,
       COUNT(NULL) AS first_listing,
       COUNT(NULL) AS credit_card,
       COUNT(NULL) AS first_paid,      
FROM `guesty-data.porter.gfh_marketing_data`
WHERE account_created_date IS NOT NULL
GROUP BY 1,2
