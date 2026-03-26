
/*
The Perfect Arrangement
=======================

Write a query to print the ID, FIRST_NAME, and LAST_NAME of customers whose concatenated first and last names are less than 12 letters long.

Sorting Rules

Sort the results by:

1. Combined name length (ascending)
2. Combined name alphabetically (case-insensitive, ascending)
3. ID (ascending)

Schema: CUSTOMER
| Column       | Type    |
| ------------ | ------- |
| ID           | Integer |
| FIRST_NAME   | String  |
| LAST_NAME    | String  |
| COUNTRY      | String  |
| CREDIT_LIMIT | Float   |

Sample Input
| ID | FIRST_NAME | LAST_NAME | COUNTRY | CREDIT_LIMIT |
| -- | ---------- | --------- | ------- | ------------ |
| 1  | Alex       | White     | USA     | 200350.54    |
| 2  | Tyler      | Hanson    | UK      | 15354.23     |
| 3  | Jordan     | Fernandez | France  | 359200.67    |
| 4  | Drew       | Bradley   | Albania | 1060.57      |
| 5  | Blake      | Fuller    | USA     | 14789.00     |
| 6  | Spencer    | Johnston  | China   | 100243.35    |
| 7  | Ellis      | Gutierrez | USA     | 998999.20    |
| 8  | Morgan     | Thomas    | Canada  | 500500.23    |
| 9  | Riley      | Garza     | UK      | 18782.44     |
| 10 | Peyton     | Harris    | USA     | 158367.00    |

Sample Output
1  Alex White
9  Riley Garza
5  Blake Fuller
4  Drew Bradley
2  Tyler Hanson

Explanation
AlexWhite → 9 letters → included
JordanFernandez → 15 letters → excluded

excluded names:
MorganThomas → 12
PeytonHarris → 12
EllisGutierrez → 14
JordanFernandez → 15
SpencerJohnston → 15

*/

SELECT ID, FIRST_NAME, LAST_NAME
FROM CUSTOMER
WHERE (LENGTH(FIRST_NAME) + LENGTH(LAST_NAME)) < 12
ORDER BY 
    (LENGTH(FIRST_NAME) + LENGTH(LAST_NAME)) ASC, 
    CONCAT(FIRST_NAME, LAST_NAME) ASC, 
    ID ASC;





