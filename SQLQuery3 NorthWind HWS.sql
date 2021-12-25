-- Ques1
select Productname , QuantityPerUnit
from Products

-- Ques2
select Productname , ProductID
from Products
WHERE Discontinued = 'False'

-- Ques 3
select Productname , ProductID
from Products
WHERE Discontinued = 'true'

-- Ques 4
select  p.Productname , p.UnitPrice  
from Products p
order by p.UnitPrice desc

select  p.ProductID , p.Productname , p.UnitPrice  
from Products p
where p.UnitPrice = (select MAX(UnitPrice) from Products) 
or p.UnitPrice = (select min(UnitPrice) from Products) 

-- Ques 5
select  p.ProductID , p.Productname , p.UnitPrice  
from Products p
where p.UnitPrice < 20
order by p.UnitPrice

-- Ques 6
select  p.ProductID , p.Productname , p.UnitPrice  
from Products p
where p.UnitPrice between 15 and 25
order by p.UnitPrice

-- Ques 7
select  p.ProductID , p.Productname , p.UnitPrice  
from Products p
where p.UnitPrice >(select avg(UnitPrice) from Products)
order by p.UnitPrice

-- Ques 8
select distinct p.ProductName, p.UnitPrice
from Products p
where 20 >= (select COUNT(distinct q.UnitPrice)
                    from Products q
                    where q.UnitPrice >= p.UnitPrice)
order by p.UnitPrice desc;


-- Ques 9
select p.Discontinued , COUNT(p.ProductID) 'Counter'
from  Products p
group by p.Discontinued

-- Ques 10
select p.ProductName , p.UnitsOnOrder , p.UnitsInStock
from Products p
where p.UnitsInStock < p.UnitsOnOrder







