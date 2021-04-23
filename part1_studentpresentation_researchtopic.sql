-- CS540 Project
-- Dennis Moreno

-- Add an atrribute to the dataset that's useful for the class, 
-- provide code, database table (i.e parid and attributes, 
-- so a quick update join can be done as some of these take a long time to process),
-- zip file for easy download for example see Ross's Golf Course work - indexes,
-- tables, queries, code for updating database, other useful items: 
-- (first come, first serve -- email me the one you are taking and I'll update this page with whom).

-- Checking if there are missing values for price attribute
select * from volusia.sales_analysis where price is null

-- Update the attribute vegetation in sales analysis:
select * from volusia.vegetation
alter table volusia.sales_analysis add column vegetation_front integer;
update volusia.sales_analysis set vegetation_front=0;
update volusia.sales_analysis s set vegetation_front=1 from volusia.vegetation v 
where ST_Intersects(ST_Buffer(s.geom, 82), v.geom);

-- New table
select * from volusia.sales_analysis
drop table if exists public.part_1_project;
create table part_1_project as select parid, aprland, aprbldg, aprtot, rmbed, sfla, sale_date, water_front, vegetation_front, price from volusia.sales_analysis;



