create view total_insights as 
select sum(Amount) as total_revenue, count(*) as total_orders
from diwali_new;

create view state_revenue as
select State, sum(Amount) as revenue
from diwali_new
group by State
order by revenue DESC;  

create view ordersperstate as
select State, count(*) as no_of_orders 
from diwali_new
group by State
order by no_of_orders DESC;

create view ordersofmarried as 
select Marital_Status, count(*) as no_of_orders
from diwali_new
group by Marital_Status
order by no_of_orders DESC;

create view groupwiseorders as 
select `Age Group`, count(*) as orders_per_group
from diwali_new
group by `Age Group`
order by orders_per_group DESC;

create view revenueofgroup as 
select `Age Group`, sum(Amount) as GroupWiseRevenue
from diwali_new
group by `Age Group`
order by GroupWiseRevenue DESC;

create view occupationvsrevenue as 
select Occupation, sum(Amount) as Revenue
from diwali_new
group by Occupation
order by Revenue DESC;


create view unmarriedrevenue as 
select Marital_Status, sum(Amount) as revenue
from diwali_new
where Marital_Status = 'unmarried'
order by revenue DESC;

create view marriedrevenue as
select Marital_Status, sum(Amount) as revenue
from diwali_new
where Marital_Status = 'married'
order by revenue DESC;

select * from diwali_new;
create view productrevenue as
select Product_Category, sum(Amount) as Revenue
from diwali_new
group by Product_Category
order by Revenue DESC;

create view totalordersbycategory as
select Product_Category, count(*) as ordersbycategory
from diwali_new
group by Product_Category
order by ordersbycategory desc;

create view productorderrevenue as
select Product_Category, count(*) as totalorders, sum(Amount) as Revenue
from diwali_new
group by Product_Category
order by Revenue desc;

create view statewiseorders as
select State, count(*) as totalorders, sum(Amount) as Revenue, avg(Amount) as avgperState
from diwali_new
group by State
order by Revenue desc;

create view agegroupspending as
select `Age Group`, Gender, count(*) as totalorders, sum(Amount) as Revenue
from diwali_new
group by `Age Group`, Gender
order by Revenue DESC;

create view marriedrevenue as
select Marital_Status, count(*) as orders, sum(Amount) as revenue
from diwali_new
group by Marital_Status
order by revenue desc;

create view occupationrevenue as
select Occupation, count(*) as orders, sum(Amount) as revenue
from diwali_new
group by Occupation
order by revenue desc;

create view stateandocc as
select State, Occupation, count(*) as orders, sum(Amount) as revenue
from diwali_new
group by Occupation,State
order by revenue desc;


select Occupation,State, count(*) as orders, sum(Amount) as revenue
from diwali_new
group by Occupation,State
order by revenue desc;

create view maritalandstate as
select Marital_Status, State, count(*) as orders, sum(Amount) as revenue
from diwali_new
group by Marital_Status,State
order by revenue desc;




