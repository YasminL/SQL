SELECT
CONCAT(customer.first_name, ' ' , customer.last_name) AS 'FullName'
, address.address AS 'Address'
, address.postal_code AS 'PostalCode'
, city.city AS 'City'
, country.country AS 'Country'
, address.phone AS 'PhoneNumber'
FROM customer AS customer
INNER JOIN address AS address ON customer.address_id = address.address_id
INNER JOIN city AS city ON address.city_id = city.city_id
INNER JOIN country AS country ON city.country_id = country.country_id;

