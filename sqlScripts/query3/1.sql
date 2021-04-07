-- MONTH1: 00
-- MONTH2: 01

SELECT  AVG(AFFECTED_DISTANCE) AS AVG_DIS, 
        TO_CHAR(START_TIME, 'HH24') AS H FROM  
                (   
                SELECT *  FROM SIYUCHEN.ACCIDENT 
                WHERE TO_CHAR(START_TIME, 'MM')>=00 
                OR   TO_CHAR(START_TIME, 'MM')<01
                ) 
    GROUP BY TO_CHAR(START_TIME, 'HH24')
    ORDER BY TO_CHAR(START_TIME, 'HH24') ASC 