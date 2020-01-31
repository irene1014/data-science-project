 select *from survey limit 10;
 
  select question, count(distinct(user_id)) total
from survey group by 
  question;

select *from quiz limit 5;
select *from home_try_on limit 5;
select *from purchase limit 5;

select q.user_id,
h.user_id is not null as ' is_home_try_on',
h.number_of_pairs,
p.user_id is not null as ' is_purchase'
 from quiz q
left join home_try_on h on q.user_id=h.user_id
left join purchase p on p.user_id=h.user_id
limit 10;
SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
LIMIT 10;