-- Query all records from card_holder table
select *
from card_holder;

-- Query all records from credit_card table
select *
from credit_card;

-- Query all records from merchant table
select *
from merchant;

-- Query all records from merchant_category table
select *
from merchant_category;

-- Query all records from transaction table
select *
from transaction;

-- Join all tables and select columns required
SELECT ch.id, 
       ch.name, 
       cc.card, 
       trans.date, 
       trans.amount, 
       mc.name as category
FROM card_holder ch
join credit_card cc on ch.id = cc.cardholder_id
join transaction trans on cc.card = trans.card
join merchant mer on trans.id_merchant = mer.id
join merchant_category mc on mc.id = mer.id_merchant_category

-- Join all tables and select columns required for Q1 - card holders 2 and 18
SELECT ch.id, 
       ch.name, 
       cc.card, 
       trans.date, 
       trans.amount, 
       mc.name as category
FROM card_holder ch
join credit_card cc on ch.id = cc.cardholder_id
join transaction trans on cc.card = trans.card
join merchant mer on trans.id_merchant = mer.id
join merchant_category mc on mc.id = mer.id_merchant_category
WHERE ch.id in (2,18)

-- Join all tables and select columns required for Q2 - Jan to Jul 2018 for card holder id25
SELECT ch.id, 
       ch.name, 
       cc.card, 
       trans.date, 
       trans.amount, 
       mc.name as category
FROM card_holder ch
join credit_card cc on ch.id = cc.cardholder_id
join transaction trans on cc.card = trans.card
join merchant mer on trans.id_merchant = mer.id
join merchant_category mc on mc.id = mer.id_merchant_category
WHERE ch.id in (25) and date_part('month',trans.date) between 1 and 6