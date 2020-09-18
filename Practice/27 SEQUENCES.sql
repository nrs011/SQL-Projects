/*
SEQUENCE >>> OBJECT FOR GENERATING UNIQUE SEQUENTIAL VALUES FOR A 
             SEQUENCE FIELD
             
INDICATES WHETHER THE DBMS WILL PREALLOCATE SEQUENCE NUMBERS IN MEMORY             
CREATE SEQUENCE sequence START WITH n INCREMENT BY n CACHE;

CREATE SEQUENCE sequence START WITH n INCREMENT BY n NOCACHE;

DROP SEQUENCE sequence;
*/

CREATE SEQUENCE CUS_CODE_SEQ START WITH 20010 NOCACHE;

CREATE SEQUENCE INV_NUMBER_SEQ START WITH 4010 NOCACHE;

INSERT INTO CUSTOMER VALUES(CUS_CODE_SEQ.NEXTVAL, 'Connery', 'Sean', NULL, '615', '898-2007', 0.00);

SELECT * FROM CUSTOMER;

INSERT INTO INVOICE VALUES(INV_NUMBER_SEQ.NEXTVAL, 20010, SYSDATE);

SELECT * FROM INVOICE;

INSERT INTO LINE VALUES(INV_NUMBER_SEQ.CURRVAL, 1, '13-Q2/P2', 1, 14.99);

SELECT * FROM LINE;

INSERT INTO LINE VALUES(INV_NUMBER_SEQ.CURRVAL, 2, '23109-HB', 1, 9.95);

SELECT * FROM LINE;

COMMIT;