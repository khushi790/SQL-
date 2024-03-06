
-- dql(data query language)

-- select statement

show databases;

use sakila;

-- tables
show tables;

describe actor;

select * from actor; 

select first_name, FIRST_NAME ,actor_id, 
actor_id*10 as newactor   --  actor_id*10  as newactor
from actor;   -- use capital or small letter both it means it is case sensitive


-- where clause ==> it is used for particular condition and it is used for data filtering
select * from actor where actor_id=3;

select * from actor where actor_id<3;
/* multiline comment*/

select * from city
where city_id > country_id; 

select * from actor
where first_name="NICK";

-- where clause (condition) ==> condition ke based data find out krna selection khlata h
-- jb directly column select krte h then it is called (projection)

-- between operator
select * from actor where actor_id between 2 and 5 ;
select first_name from actor where actor_id between 2 and 5 ;

-- between operator me hmesha first value small and bad vali value large hogi otherwise output nhi aayega
select * from actor
where actor_id between 5 and 2 ;

select * from actor
where actor_id not between 2 and 5 ;

-- in operator ==> kin specific values ke  liye data chahiye
select * from actor where actor_id in(2,4,8,11564653);

-- not in 
select * from actor where actor_id not in(2,4,8,11564653);

-- second day
-- like operator ==> basically kisi pattern ke according apni chizo ko find out krna

use sakila;
select * from actor where first_name="nick";

-- % (zero or more character)
select * from actor where first_name like "n%";
select * from actor where first_name like "%n";

select * from actor where first_name like "%VI%";
select * from actor where first_name like "__a%";
-- not like
select * from actor where first_name not like "__a%";

-- logical operator ==> and, or operator
select * from actor
where first_name="nick" and actor_id=44;
select * from actor where first_name="nick" or actor_id=44 or actor_id =100;
select * from actor where first_name="nick" or actor_id in(44,100);

select * from customer;
-- Q. from the customer table get the customer_id and first_name where the first_name is patricia or mary and customer_id should be equals to 2. 
select customer_id, first_name from customer 
where first_name="patricia" or first_name= "mary" and customer_id =2;

create database xyz;
use xyz;
create table tushar(name varchar(20));

insert into tushar value("pet"),("petter"),("pe%"),("pe");
select * from tushar where name like "pe%";

-- sorting ==> ascending and descending order
use sakila; 
select * from customer
order by store_id desc;

select * from customer
order by store_id desc, first_name;

select * from customer
order by store_id desc, address_id desc;

select * from customer
order by 4;

select customer_id, first_name from customer 
order by 4;

#functions
# (block of code (collection of statement) ==> reuse multiple time 
# pre-defined function / user-defined function ( UDF ) 
# pre-defined 
# scaler functions / multi-row

# map ==> map (lambda  x: x**2, list)

# every row apply ==> return

#string , number, date, general function, type_casting function

#string function 

select first_name, lower(first_name) from customer;

desc customer;
select first_name,last_name, concat(first_name,' ', last_name) from customer;
select first_name,last_name,customer_id, concat_ws(' ',first_name, last_name, customer_id) from customer;

select "hey" from customer; 

select length("hey") from dual;   -- total number of character show krega 

select char_length("hey") from dual;    -- kitne byte me character store hoga 

-- distinct used to remove duplicate character
select distinct(first_name) from customer;















