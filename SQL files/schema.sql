--Card Holder

Create Table card_holder (
    id Serial PRIMARY KEY
    name VARCHAR(50)
);

--Credit card

Create Table credit_card(
    card VARCHAR(25) PRIMARY KEY
    cardholder_id INT
);

--Merchant

Create Table merchant(
    id Serial PRIMARY KEY
    name VARCHAR(50)
    id_merchant_category INT
);

-- Merchant Category

Create Table merchant_category(
    id Serial PRIMARY KEY
    name VARCHAR(50)
);

-- Transaction

Create Table transaction(
    id INT PRIMARY KEY
    date TIMESTAMP 
    amount FLOAT
    card VARCHAR(25)
    id_merchant INT
);
