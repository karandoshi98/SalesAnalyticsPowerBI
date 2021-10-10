SELECT sales.transactions.*, sales.date.*
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020;

SELECT sum(sales.transactions.sales_amount)
FROM sales.transactions INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = 2020 and sales.transactions.market_code="Mark001";

SELECT distinct sales.customers.customer_type,sales.date.year,sum(sales.transactions.sales_amount)
FROM sales.transactions 
INNER JOIN sales.customers ON sales.customers.customer_code=sales.transactions.customer_code
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.customers.customer_type = 'Brick & Mortar' and sales.date.year = 2020;    
