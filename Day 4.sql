--------------------------Day 4 --------------------------

-- 22. Using case(If) statment
select * from staff_salary

select salary, 
case when salary > 13000 then 'High Salary'
	 when salary <= 13000 and salary >=10000 then 'M Salary'
	 when salary < 10000 then 'Low salary'
	 end as salary_range
from staff_salary


-- 23. Using sub qurry in a qurray
select * from staff_salary

select avg(salary) from staff_salary


select staff_id from staff_salary
where salary > (select avg(salary) from staff_salary)


select * from staff


select first_name from staff
where staff_id in (select staff_id from staff_salary
where salary > (select avg(salary) from staff_salary))


--24. SQL Function
select abs(-8)

select abs(8)

select greatest(12,13,100,14,15,16)

select least(12,13,100,14,15,16)

select mod(3,2)

select power(3,3)

select sqrt(4)

select sqrt(100)


--------joint

select * from staff
select * from staff_salary

--inner
select s.first_name, s.last_name, ss.salary 
from staff s
join staff_salary ss on ss.staff_id = s.staff_id

--left joint
select * from parents
select * from address

select p.first_name, p.last_name, p.gender, a.street, a.city
from parents p
join address a on a.address_id = p.address_id


select p.first_name, p.last_name, p.gender, a.street, a.city
from parents p
left join address a on a.address_id = p.address_id



--right Joint
select p.first_name, p.last_name, p.gender, a.street, a.city
from parents p
right join address a on a.address_id = p.address_id


--full outer Joint
select p.first_name, p.last_name, p.gender, a.street, a.city
from parents p
full outer join address a on a.address_id = p.address_id


select p.first_name, p.last_name, p.gender, a.street, a.city
from parents p
left join address a on a.address_id = p.address_id


select p.first_name || ' ' || p.last_name as full_name, p.gender,  
a.street || ' ' || a.city as full_address  from parents p 
join  address a  on a.address_id = p.address_id


select CONCAT('abhi',' ','mishra')


select s.first_name, s.last_name, ss.salary ,
case
	 when ss.salary > 13000 then 'High Salary'
	 when ss.salary <= 13000 and ss.salary >=10000 then 'M Salary'
	 when ss.salary < 10000 then 'Low salary'
	 end as salary_range
	
from staff s
join staff_salary ss on ss.staff_id = s.staff_id
























