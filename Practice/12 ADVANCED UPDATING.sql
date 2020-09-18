/*
LOGICAL OPERATORS:
OR >>> USED TO LINK MULTIPLE CONDITIONAL EXPRESSIONS
IN A WHERE OR HAVING CLAUSE; IT REQUIRES ONLY ONE OF 
THE CONDITIONAL EXPRESSIONS TO BE TRUE

AND >>> USED TO LINK MULTIPLE CONDITIONAL EXPRESSIONS
IN A WHERE OR HAVING CLAUSE; IT REQUIRES ALL OF THE 
CONDITIONAL EXPRESSIONS TO BE TRUE

NOT >>> NEGATES A GIVEN PREDICATE

SPECIAL OPERATORS:
BETWEEN >>> USED TO CHECK WHETHER A VALUE IS WITHIN A RANGE

IS NULL >>> USED TO CHECK WHETHER AN ATTRIBUTE HAS A VALUE

LIKE >>> USED TO CHECK WHETHER AN ATTRIBUTE'S TEXT VALUE
MATCHES A SPECIFIED STRING PATTERN

IN >>> USED TO CHECK WHETHER A VALUE IS AMONG A LIST OF 
SPECIFIED VALUES

EXISTS >>> USED TO CHECK WHETHER A SUBQUERY RETURNS ANY ROWS

COMPARISON OPERATORS:
EQUAL TO (=)
LESS THAN (<)
LESS THAN OR EQUAL TO (<=)
GREATER THAN (>)
GREATER THAN OR EQUAL TO (>=)
NOT EQUAL TO (<> OR !=)

ARITHMETIC OPERATORS:
ADD (+)
SUBTRACT (-)
MULTIPLY (*)
DIVIDE (/)
RAISE TO THE POWER OF (^)

USE LOGICAL OPERATORS, SPECIAL OPERATORS,COMPARISON OPERATORS 
OR ARITHMETIC OPERATORS TO CREATE MORE COMPLEX UPDATE QUERIES
*/

UPDATE PRODUCT
SET P_SALECODE = '2'
WHERE P_CODE = '1546-QQ2';

UPDATE PRODUCT
SET P_SALECODE = '1'
WHERE P_CODE IN ('2232/QWE', '2232/QTY');

UPDATE PRODUCT
SET P_SALECODE = '2'
WHERE P_INDATE < TO_DATE('25-DEC-2015', 'DD-MON-YYYY');

UPDATE PRODUCT
SET P_SALECODE = '1'
WHERE (P_INDATE >= TO_DATE('16-JAN-2016', 'DD-MON-YYYY') 
       AND P_INDATE <= TO_DATE('10-FEB-2016', 'DD-MON-YYYY'));

UPDATE PRODUCT
SET P_QOH = P_QOH + 20
WHERE P_CODE = '2232/QWE';

UPDATE PRODUCT
SET P_PRICE = P_PRICE * 1.10
WHERE P_PRICE < 50.00;