
/*Q1*/
select count(distinct utm_campaign),
  count(distinct utm_source) from page_visits;
select distinct utm_campaign,utm_source  from page_visits;
/*Q2*/
select distinct page_name from page_visits;
/*Q3*/
WITH first_touch AS (
    SELECT user_id,
        MIN(timestamp) as first_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT 
    pv.utm_campaign,count(ft.user_id)
FROM first_touch ft
JOIN page_visits pv
    ON ft.user_id = pv.user_id
    AND ft.first_touch_at = pv.timestamp
    group by pv.utm_campaign;
/*Q4, 6*/
WITH last_touch AS (
    SELECT user_id,
        max(timestamp) as last_touch_at
    FROM page_visits
    GROUP BY user_id)
SELECT 
  pv.utm_campaign,count(la.user_id),pv.page_name
FROM last_touch la
JOIN page_visits pv
    ON la.user_id = pv.user_id
    AND la.last_touch_at = pv.timestamp
    where pv.page_name='4 - purchase'
    group by pv.utm_campaign
    ;
    
select count(distinct user_id) from page_visits where page_name='4 - purchase';

