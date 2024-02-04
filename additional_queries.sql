USE ROLE ACCOUNTADMIN;
CREATE DATABASE sofomo_DB;
CREATE WAREHOUSE sofomo_WH WAREHOUSE_SIZE=XSMALL;


USE ROLE ACCOUNTADMIN;
USE WAREHOUSE sofomo_WH;
USE DATABASE sofomo_DB;
USE SCHEMA PUBLIC;


CREATE TABLE A (
dimension_1 varchar(1),
dimension_2 varchar(1),
dimension_3 varchar(1),
measure_1 smallint);


INSERT INTO A 
VALUES
    ('a', 'I', 'K', 1),
    ('a', 'J', 'L', 7),
    ('b', 'I', 'M', 2),
    ('c', 'J', 'N', 5);

CREATE TABLE B (
dimension_1 varchar(1),
dimension_2 varchar(1),
measure_2 smallint);

INSERT INTO B 
VALUES
    ('a', 'J', 7),
    ('b', 'J',10),
    ('d', 'J', 4);
