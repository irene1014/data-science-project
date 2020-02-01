select *from stream limit (20);
select *from chat limit (20);
select distinct game from stream;
select distinct channel from stream;

select count(*),game from stream group by game
order by count(*);

select count(*),game from stream 
where game='League of Legends'
group by game
order by count(*) ;
select player,count(*) from stream
group by player order by count(*);

select game,
case when (game='League of Legends' or game='Dota 2' or game='Heroes of the Storm') then 'MOBA'
when game='Counter-Strike: Global Offensive' then 'FPS'
when (game='DayZ' or game='ARK: Survival Evolved') then 'Survival'
else 'Other'
END as 'genre' from stream group by game
order by game;

SELECT time,country,
   strftime('%H', time)
FROM stream where country='KR'
GROUP BY 1;

select *from stream, chat where stream.device_id=chat.device_id limit 10;


