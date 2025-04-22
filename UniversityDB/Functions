-- select name, LENGTH(name)
-- from student

select CONCAT(name, ' ',family)
    from student
order by name

---
select name+' '+family
    from student
order by name
-- Combine string function
select CONCAT(name, ' ',family), LENGTH(name)
    from student
order by length(CONCAT(name, ' ',family)) desc

select UPPER(name) 
    from student 
select left(name,1) 
    from student 

select right(name,3) 
    from student 

select concat(left(name,1) ,lower(right(name,7)))
    from student 

select substring(name,2,1)
    from student

select substring(name,-2,2)
    from student

select concat(substring(name,1,1),lower(substring(name,2,2)))
    from student
select *
    from student
    where trim(name)='james'

-- SELECT TRIM(BOTH '#' FROM '###Cool###') AS Result;
-- Output: Cool

-- select description ,trim(leading 'A ' from description) as modified
-- from film_text


select * from student
select name,
    CASE
    WHEN name='james' THEN UPPER(SUBSTRING(name,1,1))
    when name='john' THEN LOWER(SUBSTRING(name,1,1))
    else UPPER(SUBSTRING(name,1,3))
    END as phone

from student

select name,
    CASE
    WHEN CAST([Address] AS VARCHAR(MAX)) like '[0-9] %' THEN SUBSTRING([address], 3, LEN(CAST([Address] AS VARCHAR(MAX))))
    WHEN CAST([Address] AS VARCHAR(MAX)) like '[0-9][0-9] %' THEN SUBSTRING([address], 3, LEN(CAST([Address] AS VARCHAR(MAX))))
    
    else UPPER(SUBSTRING([Address],1,3))
    END as [Address]

from student

-- select Address as adrs,trim(leading '[0-9][0-9] %' from Address) as modified
-- from student

-- select locate('ame',name) from student