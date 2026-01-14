
-- table 
create table layoffs_staging (
company varchar(40),
location varchar(40),
industry varchar(40),
total_laid int,
percentage double,
date text,
stage varchar(40),
country varchar(40),
funds_raised_millions int

);


alter table layoffs_staging
add column date_c date;

/* this query attempts to find the cause of the failure
if the result is null, it means we have null values that doesnt let the function to be used
otherwise it means that there are other reasons 
str_to_date function cannot convert null values to the date format*/

select date from layoffs_staging
where str_to_date(date, '%Y-%m-%d') is null and date is not null;


/* ^ it denotes the beginning of the string
[0-9]: 0 to 9
{4}: 4 digits
$ the end of the string */

update layoffs_staging
set date_c = case
when date is null or date = '' then null
when date regexp '^[0-9]{4}-[0-9]{2}-[0-9]{2}$' then str_to_date(date,'%Y-%m-%d')
else null
end;

select * from layoffs_staging;

-- drop unecessary column date
alter table layoffs_staging
drop column date;

alter table layoffs_staging
rename column date_c to date;

alter table layoffs_staging
rename column total_laid to total_laid_off, rename column percentage to
percentage_laid_off;


-- create cte in order to detect the duplicates rows
with duplicate_cte as 
(
select *, row_number() over(partition by
company,location,industry, total_laid_off, percentage_laid_off, date, stage, country,funds_raised_millions) as row_num
from layoffs_staging)

select * from duplicate_cte
where row_num > 1;

-- check if the results of the cte are valid 
select * from layoffs_staging
where location = 'london' and total_laid_off = 750;


-- create new table with an extra column
create table layoffs_staging2 (
company varchar(40),
location varchar(40),
industry varchar(40),
total_laid_off int,
percentage_laid_off double,
stage varchar(40),
country varchar(40),
funds_raised_millions int,
date date,
row_num int
);

drop table layoffs_staging2;

-- proceed to delete the duplicate values
insert into layoffs_staging2
select *, row_number() over(partition by
company,location,industry, total_laid_off, percentage_laid_off, date, stage, country,funds_raised_millions) as row_num
from layoffs_staging;

delete from layoffs_staging2
where row_num > 1;


-- standarizing data
update layoffs_staging2 
set company = trim(company);

select distinct industry
from layoffs_staging2
order by 1;

-- set the same industry with the sama name 
update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select distinct country
from layoffs_staging2
order by 1;

update layoffs_staging2
set industry = 'United States'
where industry like 'United States%';

-- alternative way
/*update layoffs_staging2
set country = trim(trailing '.' from country); */

-- modify datatype of a column
-- i already did that
alter table layoffs_staging
modify column date date;

-- correcting the empty cells with the correct content
select t1.industry,t2.industry from layoffs_staging2 t1
inner join layoffs_staging2 t2
on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

-- where (t1.industry is null or t1.industry = '') this line needs to be enclosed by () to function properly
update layoffs_staging2 t1
inner join layoffs_staging2 t2
on t1.company = t2.company
set t1.industry = t2.industry
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

select * from layoffs_staging2
where company = 'Airbnb';

-- delete the rows that doesnt have any value and which are not giving us something important as information
select * from layoffs_staging2 
where total_laid_off is null and
percentage_laid_off is null; 

delete from layoffs_staging2
where total_laid_off is null and
percentage_laid_off is null;

select * from layoffs_staging2;

-- drop unecessary column row_num
alter table layoffs_staging2
drop column row_num;
