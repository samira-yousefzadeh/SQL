select * from student where name in ('james', 'john')

select top 10 * from student where name not in ('james', 'john')

-- wildcards
select name from student 
where name like 'joh%'


select name from student 
where name like 'j_hn'