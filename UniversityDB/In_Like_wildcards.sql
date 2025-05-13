select * from student where name in ('james', 'john')
ORDER by family ASC
select top 10 * from student where name not in ('james', 'john')

-- wildcards
select name from student 
where name like 'joh%'


select name from student 
where name like 'j_hn'

select * from student 
where StdPostCode = 'BH1 1AA'
and ([address] LIKE '%15%' OR [address] LIKE'%Bournemouth%' )

-- 1. Create a full-text catalog
-- CREATE FULLTEXT CATALOG ftCatalog AS DEFAULT;

-- -- 2. Create full-text index on 'name' column
-- CREATE FULLTEXT INDEX ON student(name)
-- KEY INDEX PK_student -- replace with your primary key name
-- WITH STOPLIST = SYSTEM;


-- SELECT name
-- FROM student
-- WHERE CONTAINS(name, '"john*" OR "pen%"')