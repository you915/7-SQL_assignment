# Looking for Suspicious Transactions

![Credit card fraudster](Images/credit_card_fraudster.jpg)

*[Credit Card Fraudster by Richard Patterson](https://www.flickr.com/photos/136770128@N07/42252105582/) | [Creative Commons Licensed](https://creativecommons.org/licenses/by/2.0/)*

## Background

Fraud is prevalent these days, whether you are a small taco shop or a large international business. While there are emerging technologies that employ machine learning and artificial intelligence to detect fraud, many instances of fraud detection still require strong data analytics to find abnormal charges.

Apply your new SQL skills to analyze historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions.

You are asked to accomplish three main tasks:

1. [Data Modeling](#Data-Modeling):
Define a database model to store the credit card transactions data and create a new PostgreSQL database using your model.

2. [Data Engineering](#Data-Engineering): Create a database schema on PostgreSQL and populate your  database from the CSV files provided.

3. [Data Analysis](#Data-Analysis): Analyze the data to identify possible fraudulent transactions.

---

## Files

* [card_holder.csv](Data/card_holder.csv)
* [credit_card.csv](Data/credit_card.csv)
* [merchant.csv](Data/merchant.csv)
* [merchant_category.csv](Data/merchant_category.csv)
* [transaction.csv](Data/transaction.csv)

## Instructions

### Data Modeling

Create an entity relationship diagram (ERD) by inspecting the provided CSV files.

Part of the challenge here is to figure out how many tables you should create, as well as what kind of relationships you need to define among the tables.

Feel free to discuss your database model design ideas with your classmates. You can use a tool like [Quick Database Diagrams](https://www.quickdatabasediagrams.com) to create your model.

![ERD](Images/QuickDBD-export.png)

### Data Engineering

Using your database model as a blueprint, create a database schema for each of your tables and relationships. Remember to specify data types, primary keys, foreign keys, and any other constraints you defined.

After creating the database schema, import the data from the corresponding CSV files.

### Data Analysis

It's time to identify fraudulent transactions. In this part of the homework assignment, you will analyze the data and then create a report to present your findings. You can use a Jupyter Notebook, a markdown file, or a word processor. Your report should answer the following questions:

* How can you isolate (or group) the transactions of each cardholder?

* Consider the time period 7:00 a.m. to 9:00 a.m.

  * What are the top 100 highest transactions during this time period?

![100_trans](Images/100_transaction.JPG)

  * Do you see any fraudulent or anomalous transactions?

Yes

  * If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

By looking at the combined plot, it is possible to say cardholder 2's transaction is consistent while card holder 18's transaction is not consistent. Card holder 18's transaction shows a quite frequent high purchase throughout the year. Cardholder 2 constantly made small purchases while cardholder 18 made big purchases roughly every 2 months. 

It does not make sense to spend $1000+ at the bar between 7am - 9am. People typically does not eat or drink that much in the restaurant or bar in the morning.

* Some fraudsters hack a credit card by making several small payments (generally less than $2.00), which are typically ignored by cardholders. Count the transactions that are less than $2.00 per cardholder. Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

Yes. There are many transactions below $2 and this is the evidence that the credit card has been hacked.

![100_trans](Images/100_transaction.JPG)

* What are the top 5 merchants prone to being hacked using small transactions?

![5merchant](Images/5merchant.JPG)

* Once you have a query that can be reused, create a view for each of the previous queries.

Create a report for fraudulent transactions of some top customers of the firm. To achieve this task, perform a visual data analysis of fraudulent transactions using Pandas, Plotly Express, hvPlot, and SQLAlchemy to create the visualizations.

* Verify if there are any fraudulent transactions in the history of two of the most important customers of the firm. For privacy reasons, you only know that their cardholders' IDs are 18 and 2.

  * Using hvPlot, create a line plot representing the time series of transactions over the course of the year for each cardholder. In order to compare the patterns of both cardholders, create a line plot containing both lines.

![ID_18_plot](Images/transactions_for_cardholders18.JPG)

![ID_2_plot](Images/transactions_for_cardholders2.JPG)

![ID_18&2_plot](Images/transactions_for_cardholders2_18.JPG)

  * What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.

* The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. You are asked to find any anomalous transactions during that period.

  * Using Plotly Express, create a series of six box plots, one for each month, in order to identify how many outliers per month for cardholder ID 25.

![ID_25_plot](Images/transactions_by_ID_holder25.JPG)

  * Do you notice any anomalies? Describe your observations and conclusions.

## Challenge + 5 pts for an honest attempt, +10 pts for correct submission

Another approach to identify fraudulent transactions is to look for outliers in the data. Standard deviation or quartiles are often used to detect outliers.

## Identifying Outliers using Standard Deviation
![std_plot](Images/outlier_std.JPG)

## Identifying Outliers Using Interquartile Range
![Interquartile_plot](Images/outlier_per.JPG)

Read the following articles on outliers detection, and then code a function using Python to identify anomalies for any cardholder.

* [How to Calculate Outliers](https://www.wikihow.com/Calculate-Outliers)

* [Removing Outliers Using Standard Deviation in Python](https://www.kdnuggets.com/2017/02/removing-outliers-standard-deviation-python.html)

* [How to Use Statistics to Identify Outliers in Data](https://machinelearningmastery.com/how-to-use-statistics-to-identify-outliers-in-data/)

© 2019 Trilogy Education Services
