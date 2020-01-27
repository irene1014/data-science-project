create table friends(
id integer,
name text,
birthday date);

insert into friends
values (1,'Jane Doe','05-30-1990');
insert into friends
values (2,'Katie','03-26-1994');
insert into friends
values (3,'Justine','12-30-1993');

update friends 
set name='Jane Smith'
where name ='Jane Doe';

alter table friends
add email text;

update friends 
set email='jane@codecademy.com'
where name='Jane Smith';

update friends 
set email='jane@codecademy.com'
where name='Jane Smith';

update friends 
set email='katie@codecademy.com'
where name='Katie';

update friends 
set email='Justine@codecademy.com'
where name='Justine';

SELECT * 
FROM friends;
