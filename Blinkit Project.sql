show databases;

use shivam;

show Tables;

select * from blinkit;
#2
select Item_Identifier from blinkit;
#3
select count(Item_Identifier) from blinkit;
#4
select max(Item_Weight) from blinkit;
#5
select min(Item_Weight) from blinkit;
#6
select avg(item_Weight) from blinkit;
#7
select count(Item_Fat_Content) from blinkit where Item_Fat_Content='Low Fat';
#8
select count(Item_Fat_Content) from blinkit where Item_Fat_Content='Regular';
#9
select max(Item_MRP) from blinkit;
#10
select min(Item_MRP) from blinkit;
#11
select Item_Identifier,Item_Fat_Content,Item_Type,Item_MRP from blinkit where Item_MRp>200;
#12
select max(Item_MRP) from blinkit where Item_Fat_Content='Low Fat';
#13
select min(Item_MRP) from blinkit where Item_Fat_Content='Low Fat';
#14
select * from blinkit where Item_MRP between 50 and 100;
#15
select distinct(Item_Fat_Content) from blinkit;
#16
select distinct(Item_Type) from blinkit;
#17
select * from blinkit order by Item_MRP desc;
#18
select * from blinkit order by Item_Outlet_Sales asc;
#19
select * from blinkit order by Item_Type asc;
#20
select * from blinkit where Item_Type in ('Dairy','Meat');
#21
select distinct(Outlet_Size) from blinkit;
#22. Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type 
select distinct(Outlet_location_Type) from blinkit;
#23. Write an SQL query to show ALL UNIQUE value of Outlet_Type
select distinct(Outlet_Type) from blinkit;
#24. Write an SQL query to show count of number of items by Item_Type and order it in descending order
select Item_Type,count(Item_Type) from blinkit group by Item_Type order by count(Item_Type) desc;
#25. Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
select Outlet_Size,count(Outlet_Size) from blinkit group by outlet_size order by count(Outlet_Size) asc;
#26. Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order
select Outlet_type,count(Outlet_Type) from blinkit group by outlet_type order by count(outlet_type) desc;
#27. Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order 
select outlet_location_type,count(outlet_location_type) from blinkit group by  Outlet_Location_Type order by count(Outlet_Location_Type) desc;
#28. Write an SQL query to show maximum MRP by Item_Type 
select max(Item_MRP),Item_Type from blinkit group by  Item_Type order by max(Item_MRP) desc;
#29. Write an SQL query to show minimum MRP by Item_Type 
select Item_Type,min(Item_MRP) from blinkit group by Item_Type order by Item_Type desc;
#30. Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order. 
select min(Item_MRP),Outlet_Establishment_Year from blinkit group by Outlet_Establishment_Year order by min(Item_MRP) desc;
#31. Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order. 
select max(Item_MRP),Outlet_Establishment_Year from blinkit group by Outlet_Establishment_Year order by max(Item_MRP) desc;
#32. Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
select outlet_size,avg(Item_MRP) from blinkit group by Outlet_Size order by avg(Item_MRP) desc;
#33. Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order. 
select avg(Item_MRP),Outlet_Type from blinkit group by Outlet_Type order by avg(Item_MRP) asc;
#34. Write an SQL query to show maximum MRP by Outlet_Type 
select max(Item_MRP),Outlet_Type from blinkit group by Outlet_Type ;
#35. Write an SQL query to show maximum Item_Weight by Item_Type 
select max(Item_Weight),Item_Type from blinkit group by Item_Type;
#36. Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year 
select max(Item_Weight),Outlet_Establishment_Year from blinkit group by Outlet_Establishment_Year;
#37. Write an SQL query to show minimum Item_Weight by Outlet_Type
select min(Item_Weight),Outlet_Type from blinkit group by Outlet_Type;
#38. Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order 
select avg(Item_Weight),Outlet_Location_Type from blinkit group by Outlet_Location_Type order by Outlet_Location_Type desc;
#39. Write an SQL query to show maximum Item_Outlet_Sales by Item_Type 
select max(Item_Outlet_Sales),Item_Type from blinkit group by Item_Type;
#40. Write an SQL query to show minimum Item_Outlet_Sales by Item_Type 
select min(Item_Outlet_Sales),Item_Type from blinkit group by Item_Type;
#41. Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year 
select min(Item_Outlet_Sales),Outlet_Establishment_Year from blinkit group by Outlet_Establishment_Year ;
#42. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order 
select max(Item_Outlet_Sales),Outlet_Establishment_Year from blinkit group by Outlet_Establishment_Year order by Outlet_Establishment_Year desc;
#43. Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order 
select avg(Item_Outlet_Sales),Outlet_Size from blinkit group by Outlet_Size order by avg(Item_Outlet_Sales) desc;
#44. Write an SQL query to show average Item_Outlet_Sales by Outlet_Type 
select avg(Item_Outlet_Sales),Outlet_Type from blinkit group by Outlet_Type ;
#45. Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type 
select max(Item_Outlet_Sales),Outlet_Type from blinkit group by Outlet_Type;
#46. Write an SQL query to show total Item_Outlet_Sales by Item_Type 
select sum(Item_Outlet_Sales),Item_Type from blinkit group by Item_Type;
#47. Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content 
select sum(Item_Outlet_Sales),Item_Fat_Content  from blinkit group by Item_Fat_Content ;
#48. Write an SQL query to show maximum Item_Visibility by Item_Type
select max(Item_Visibility),Item_Type from blinkit group by Item_Type;  
#49. Write an SQL query to show Minimum Item_Visibility by Item_Type
select min(Item_Visibility),Item_Type from blinkit group by Item_Type; 
#50. Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1 
select sum(Item_Outlet_Sales),Item_Type from blinkit where Outlet_Location_Type='Tier 1' group by Item_Type; 
#51. Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
select sum(Item_Outlet_Sales),Item_Type from blinkit  where Item_Fat_Content in ('Low Fat','LF') group by Item_Type;




















