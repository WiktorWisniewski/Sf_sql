WITH A_and_B as (SELECT dimension_1, dimension_2, measure_1, 0 as measure_2 FROM A
UNION 
SELECT dimension_1, dimension_2, 0 as measure_1, measure_2 FROM B),

correct_dim as (SELECT 
    dimension_1, 
    CASE 
        WHEN dimension_1 ='a' and dimension_2 != 'W' THEN 'W'
        WHEN dimension_1 = 'b' and dimension_2 != 'X' THEN 'X'
        WHEN dimension_1 = 'c' and dimension_2 != 'Y' THEN 'Y'
        WHEN dimension_1 = 'd' and dimension_2 != 'Z' THEN 'Z'
    END as dimension_2, 
    measure_1,
    measure_2
FROM
    A_and_B)
    
SELECT
    dimension_1,
    dimension_2,
    sum(measure_1) as sum_measure_1,
    sum(measure_2) as sum_measure_2
FROM 
    correct_dim
GROUP BY
    dimension_1, dimension_2;
