select distinct station.city from station (nolock) where station.city not like '%[aeiou]';