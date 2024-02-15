-- Drop Database

SELECT '' AS 'INSTALLATION STARTING"\G'

DROP DATABASE IF EXISTS guttman_202db_assign5;

-- Create Database

CREATE DATABASE IF NOT EXISTS guttman_202db_assign5
CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

SHOW DATABASES \G

-- DATABASES

USE guttman_202db_assign5;

-- Create Tables

DROP TABLE
If EXISTS
'vendor';

CREATE TABLE
If NOT EXISTS vendor (  vendorid  char(2)  NOT NULL,
                       vendername   VARCHAR (25)  NOT NULL,
                       PRIMARY KEY    (vendorid)
                     );

                     SHOW CREATE TABLE vendor \G

SHOW CREATE TABLE vendor \G

DROP TABLE
IF EXISTS
'category'

CREATE TABLE
IF NOT EXISTS category (   categoryid    CHAR(2) NOT NULL
                           categoryname  VARCHAR(25) NOT
                                          PRIMARY KEY (categoryid)
);
SHOW CREATE TABLE category \G

DROP Table
IF EXISTS
'product';

CREATE TABLE
IF NOT EXISTS product  (      productid     CHAR(3) NOT NULL,
                            productname     VARCHAR(25) NOT NULL,
                            productprice     NUMERIC (7,2) NOT NULL,
                            vendorid         CHAR (2) NOT NULL,
                            categoryid       CHAR(2)  NOT NULL,
                                             PRIMARY KEY (productid),
                                             FOREIGN KEY (vendorid),
                                             REFERENCES category(categoryid));
SHOW CREATE TABLE product \G

DROP Table
IF EXISTS
'region'  ;

CREATE TABLE
IF NOT EXISTS region (      regionid        CHAR NOT NULL,
                          regionname      VARCHAR(25) NOT NULL,

                                          PRIMARY KEY (regionid)

);

 SHOW CREATE TABLE \G

 DROP TABLE
 IF NOT EXISTS store (       storeid           VARCHAR(3)  NOT NULL,
                             storezip           CHAR(5) NOT NULL,
                              regionid          CHAR NOT NULL, )
