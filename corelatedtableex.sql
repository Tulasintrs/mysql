create  database ass1;
use ass1;
CREATE TABLE T1 (
    c1 INT,
    c2 VARCHAR(10),
    c3 INT
);
INSERT INTO T1 VALUES (1, 'AA', 30);
INSERT INTO T1 VALUES (2, 'BB', 80);
INSERT INTO T1 VALUES (6, 'UU', 90);
SELECT COUNT(*) AS matching_rows FROM T1 WHERE c1 > 1 AND c3 < 90;
SELECT COUNT(c2) AS matching_rows FROM T1 WHERE c1 > 1 AND c3 < 90;
select c1,c2,avg(c3) from t1 group by c1,c2;
