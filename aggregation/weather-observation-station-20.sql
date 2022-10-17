-- A median is defined as a number separating the higher half of a data set from the lower half. 
-- Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
-- The northern latitutes in DD format have a latitude greater than zero
SELECT
convert(decimal(7, 4), (
 (SELECT MAX(lat_n) FROM
   (SELECT TOP 50 PERCENT lat_n FROM station (nolock) where lat_n > 0 ORDER BY lat_n asc) AS BottomHalf)
 +
 (SELECT MIN(lat_n) FROM
   (SELECT TOP 50 PERCENT lat_n FROM station (nolock) where lat_n > 0 ORDER BY lat_n DESC) AS TopHalf)
) / 2);