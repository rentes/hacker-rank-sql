select distinct station.city from station (nolock) where (station.id % 2) = 0;