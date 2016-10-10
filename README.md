# DVD Store Database: a sample database

## Purpose
* To be used in integration tests with scottseo/dvdstore-api image
* To be used in load testing and capturing relative breaking point of API

## Test data
* PostgreSQL port of the Dell Store 2 database
* Counts of core data
```sql
 select count(*) from customers  -- 20000 customers
 select count(*) from categories -- 16 categories
 select count(*) from inventory  -- 10000 inventory
 select count(*) from orders     -- 12000 orders
 select count(*) from orderlines -- 60350 order lines
 select count(*) from products   -- 10000 products
 ```
* Data is sourced from PostgreSQL port of the Dell Store 2 database

## How to run
`docker run --name dvdstore-db -p 5432:5432 -e POSTGRES_USER=user -e POSTGRES_PASSWORD=password -e POSTGRES_DB=dellstore2 -d scottseo/dvdstore-db`

## License
* Obtained and using the same MIT license from postgres docker image `postgres:9.6`
