select distinct station.city from station (nolock) where station.city not like '[aeiou]%' and station.city not like '%[aeiou]';