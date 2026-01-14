create table covid_deaths (
iso_code varchar(4),
continent varchar(30),
location varchar(30),
date date,
population text,
total_cases text,
new_cases text,
new_cases_smoothed text,
total_deaths text,
new_deaths text,
new_deaths_smoothed text,
total_cases_per_million text,
new_cases_per_million text,
new_cases_smoothed_per_million text,
total_deaths_per_million text,
new_deaths_per_million text,
new_deaths_smoothed_per_million text,
reproduction_rate text,
icu_patients text,
icu_patients_per_million text,
hosp_patients text,
hosp_patients_per_million text,
weekly_icu_admissions text,
weekly_icu_admissions_per_million text,
weekly_hosp_admissions text,
weekly_hosp_admissions_per_million text
);

UPDATE covid_deaths
SET 
    population = CASE WHEN population REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN population ELSE NULL END,
    total_cases = CASE WHEN total_cases REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_cases ELSE NULL END,
    new_cases = CASE WHEN new_cases REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_cases ELSE NULL END,
    new_cases_smoothed = CASE WHEN new_cases_smoothed REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_cases_smoothed ELSE NULL END,
    total_deaths = CASE WHEN total_deaths REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_deaths ELSE NULL END,
    new_deaths = CASE WHEN new_deaths REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_deaths ELSE NULL END,
    new_deaths_smoothed = CASE WHEN new_deaths_smoothed REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_deaths_smoothed ELSE NULL END,
    total_cases_per_million = CASE WHEN total_cases_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_cases_per_million ELSE NULL END,
    new_cases_per_million = CASE WHEN new_cases_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_cases_per_million ELSE NULL END,
    new_cases_smoothed_per_million = CASE WHEN new_cases_smoothed_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_cases_smoothed_per_million ELSE NULL END,
    total_deaths_per_million = CASE WHEN total_deaths_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_deaths_per_million ELSE NULL END,
    new_deaths_per_million = CASE WHEN new_deaths_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_deaths_per_million ELSE NULL END,
    new_deaths_smoothed_per_million = CASE WHEN new_deaths_smoothed_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_deaths_smoothed_per_million ELSE NULL END,
    reproduction_rate = CASE WHEN reproduction_rate REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN reproduction_rate ELSE NULL END,
    icu_patients = CASE WHEN icu_patients REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN icu_patients ELSE NULL END,
    icu_patients_per_million = CASE WHEN icu_patients_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN icu_patients_per_million ELSE NULL END,
    hosp_patients = CASE WHEN hosp_patients REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN hosp_patients ELSE NULL END,
    hosp_patients_per_million = CASE WHEN hosp_patients_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN hosp_patients_per_million ELSE NULL END,
    weekly_icu_admissions = CASE WHEN weekly_icu_admissions REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN weekly_icu_admissions ELSE NULL END,
    weekly_icu_admissions_per_million = CASE WHEN weekly_icu_admissions_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN weekly_icu_admissions_per_million ELSE NULL END,
    weekly_hosp_admissions = CASE WHEN weekly_hosp_admissions REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN weekly_hosp_admissions ELSE NULL END,
    weekly_hosp_admissions_per_million = CASE WHEN weekly_hosp_admissions_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN weekly_hosp_admissions_per_million ELSE NULL END;

ALTER TABLE covid_deaths
MODIFY COLUMN population BIGINT, 
MODIFY COLUMN total_cases BIGINT, 
MODIFY COLUMN new_cases BIGINT, 
MODIFY COLUMN new_cases_smoothed DOUBLE, 
MODIFY COLUMN total_deaths BIGINT, 
MODIFY COLUMN new_deaths BIGINT, 
MODIFY COLUMN new_deaths_smoothed DOUBLE, 
MODIFY COLUMN total_cases_per_million DOUBLE, 
MODIFY COLUMN new_cases_per_million DOUBLE, 
MODIFY COLUMN new_cases_smoothed_per_million DOUBLE, 
MODIFY COLUMN total_deaths_per_million DOUBLE, 
MODIFY COLUMN new_deaths_per_million DOUBLE, 
MODIFY COLUMN new_deaths_smoothed_per_million DOUBLE, 
MODIFY COLUMN reproduction_rate DOUBLE, 
MODIFY COLUMN icu_patients DOUBLE, 
MODIFY COLUMN icu_patients_per_million DOUBLE, 
MODIFY COLUMN hosp_patients DOUBLE, 
MODIFY COLUMN hosp_patients_per_million DOUBLE, 
MODIFY COLUMN weekly_icu_admissions DOUBLE, 
MODIFY COLUMN weekly_icu_admissions_per_million DOUBLE, 
MODIFY COLUMN weekly_hosp_admissions DOUBLE, 
MODIFY COLUMN weekly_hosp_admissions_per_million DOUBLE;


LOAD DATA local INFILE "C:/Users/User/Desktop/Alex Data Analyst Bootcamp/Sql/Excel/covidDeaths.csv"
INTO TABLE covid_deaths
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
 -- If there is a header row in your CSV

    

create table covid_vacc (

iso_code varchar(4),            
continent varchar(30),
location varchar(30),
date date,
total_tests text, 	
new_tests text,	
total_tests_per_thousand text,	
new_tests_per_thousand	text,
new_tests_smoothed	text,
new_tests_smoothed_per_thousand	text,
positive_rate text,	
tests_per_case	text,
tests_units	varchar(30),
total_vaccinations text,	
people_vaccinated text,	
people_fully_vaccinated	text,
total_boosters text,
new_vaccinations text,	
new_vaccinations_smoothed text,	
total_vaccinations_per_hundred text,
people_vaccinated_per_hundred text,	
people_fully_vaccinated_per_hundred	text,
total_boosters_per_hundred	text,
new_vaccinations_smoothed_per_million text,	
new_people_vaccinated_smoothed	text,
new_people_vaccinated_smoothed_per_hundred text,
stringency_index text,	
population_density	text,
median_age	text,
aged_65_older text,
aged_70_older text,
gdp_per_capita text,	
extreme_poverty	text,
cardiovasc_death_rate text,
diabetes_prevalence	text,
female_smokers	text,
male_smokers text,	
handwashing_facilities text,	
hospital_beds_per_thousand	text,
life_expectancy	text,
human_development_index text,	
excess_mortality_cumulative_absolute text,	
excess_mortality_cumulative	text,
excess_mortality text,	
excess_mortality_cumulative_per_million text
);

UPDATE covid_vacc
SET 
    iso_code = CASE WHEN iso_code REGEXP '^[A-Za-z]{2,3}$' THEN iso_code ELSE NULL END,
    continent = CASE WHEN continent REGEXP '^[A-Za-z ]+$' THEN continent ELSE NULL END,
    location = CASE WHEN location REGEXP '^[A-Za-z ]+$' THEN location ELSE NULL END,
    total_tests = CASE WHEN total_tests REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_tests ELSE NULL END,
    new_tests = CASE WHEN new_tests REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_tests ELSE NULL END,
    total_tests_per_thousand = CASE WHEN total_tests_per_thousand REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_tests_per_thousand ELSE NULL END,
    new_tests_per_thousand = CASE WHEN new_tests_per_thousand REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_tests_per_thousand ELSE NULL END,
    new_tests_smoothed = CASE WHEN new_tests_smoothed REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_tests_smoothed ELSE NULL END,
    new_tests_smoothed_per_thousand = CASE WHEN new_tests_smoothed_per_thousand REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_tests_smoothed_per_thousand ELSE NULL END,
    positive_rate = CASE WHEN positive_rate REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN positive_rate ELSE NULL END,
    tests_per_case = CASE WHEN tests_per_case REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN tests_per_case ELSE NULL END,
    tests_units = CASE WHEN tests_units REGEXP '^[A-Za-z ]+$' THEN tests_units ELSE NULL END,
    total_vaccinations = CASE WHEN total_vaccinations REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_vaccinations ELSE NULL END,
    people_vaccinated = CASE WHEN people_vaccinated REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN people_vaccinated ELSE NULL END,
    people_fully_vaccinated = CASE WHEN people_fully_vaccinated REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN people_fully_vaccinated ELSE NULL END,
    total_boosters = CASE WHEN total_boosters REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_boosters ELSE NULL END,
    new_vaccinations = CASE WHEN new_vaccinations REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_vaccinations ELSE NULL END,
    new_vaccinations_smoothed = CASE WHEN new_vaccinations_smoothed REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_vaccinations_smoothed ELSE NULL END,
    total_vaccinations_per_hundred = CASE WHEN total_vaccinations_per_hundred REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_vaccinations_per_hundred ELSE NULL END,
    people_vaccinated_per_hundred = CASE WHEN people_vaccinated_per_hundred REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN people_vaccinated_per_hundred ELSE NULL END,
    people_fully_vaccinated_per_hundred = CASE WHEN people_fully_vaccinated_per_hundred REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN people_fully_vaccinated_per_hundred ELSE NULL END,
    total_boosters_per_hundred = CASE WHEN total_boosters_per_hundred REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN total_boosters_per_hundred ELSE NULL END,
    new_vaccinations_smoothed_per_million = CASE WHEN new_vaccinations_smoothed_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_vaccinations_smoothed_per_million ELSE NULL END,
    new_people_vaccinated_smoothed = CASE WHEN new_people_vaccinated_smoothed REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_people_vaccinated_smoothed ELSE NULL END,
    new_people_vaccinated_smoothed_per_hundred = CASE WHEN new_people_vaccinated_smoothed_per_hundred REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN new_people_vaccinated_smoothed_per_hundred ELSE NULL END,
    stringency_index = CASE WHEN stringency_index REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN stringency_index ELSE NULL END,
    population_density = CASE WHEN population_density REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN population_density ELSE NULL END,
    median_age = CASE WHEN median_age REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN median_age ELSE NULL END,
    aged_65_older = CASE WHEN aged_65_older REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN aged_65_older ELSE NULL END,
    aged_70_older = CASE WHEN aged_70_older REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN aged_70_older ELSE NULL END,
    gdp_per_capita = CASE WHEN gdp_per_capita REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN gdp_per_capita ELSE NULL END,
    extreme_poverty = CASE WHEN extreme_poverty REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN extreme_poverty ELSE NULL END,
    cardiovasc_death_rate = CASE WHEN cardiovasc_death_rate REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN cardiovasc_death_rate ELSE NULL END,
    diabetes_prevalence = CASE WHEN diabetes_prevalence REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN diabetes_prevalence ELSE NULL END,
    female_smokers = CASE WHEN female_smokers REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN female_smokers ELSE NULL END,
    male_smokers = CASE WHEN male_smokers REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN male_smokers ELSE NULL END,
    handwashing_facilities = CASE WHEN handwashing_facilities REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN handwashing_facilities ELSE NULL END,
    hospital_beds_per_thousand = CASE WHEN hospital_beds_per_thousand REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN hospital_beds_per_thousand ELSE NULL END,
    life_expectancy = CASE WHEN life_expectancy REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN life_expectancy ELSE NULL END,
    human_development_index = CASE WHEN human_development_index REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN human_development_index ELSE NULL END,
    excess_mortality_cumulative_absolute = CASE WHEN excess_mortality_cumulative_absolute REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN excess_mortality_cumulative_absolute ELSE NULL END,
    excess_mortality_cumulative = CASE WHEN excess_mortality_cumulative REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN excess_mortality_cumulative ELSE NULL END,
    excess_mortality = CASE WHEN excess_mortality REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN excess_mortality ELSE NULL END,
    excess_mortality_cumulative_per_million = CASE WHEN excess_mortality_cumulative_per_million REGEXP '^-?[0-9]+(\.[0-9]+)?$' THEN excess_mortality_cumulative_per_million ELSE NULL END;


ALTER TABLE covid_vacc
MODIFY COLUMN total_tests BIGINT, 	
MODIFY COLUMN new_tests BIGINT,	
MODIFY COLUMN total_tests_per_thousand DOUBLE,	
MODIFY COLUMN new_tests_per_thousand	DOUBLE,
MODIFY COLUMN new_tests_smoothed	BIGINT,
MODIFY COLUMN new_tests_smoothed_per_thousand	DOUBLE,
MODIFY COLUMN positive_rate	DOUBLE,	
MODIFY COLUMN tests_per_case	DOUBLE,
MODIFY COLUMN total_vaccinations	DOUBLE,	
MODIFY COLUMN people_vaccinated	DOUBLE,	
MODIFY COLUMN people_fully_vaccinated	BIGINT,
MODIFY COLUMN total_boosters	BIGINT,
MODIFY COLUMN new_vaccinations	BIGINT,	
MODIFY COLUMN new_vaccinations_smoothed	BIGINT,	
MODIFY COLUMN total_vaccinations_per_hundred	DOUBLE,
MODIFY COLUMN people_vaccinated_per_hundred	DOUBLE,	
MODIFY COLUMN people_fully_vaccinated_per_hundred	DOUBLE,
MODIFY COLUMN total_boosters_per_hundred	DOUBLE,
MODIFY COLUMN new_vaccinations_smoothed_per_million	BIGINT,	
MODIFY COLUMN new_people_vaccinated_smoothed	BIGINT,
MODIFY COLUMN new_people_vaccinated_smoothed_per_hundred	DOUBLE,
MODIFY COLUMN stringency_index	DOUBLE,	
MODIFY COLUMN population_density	DOUBLE,
MODIFY COLUMN median_age	DOUBLE,
MODIFY COLUMN aged_65_older	DOUBLE,
MODIFY COLUMN aged_70_older	DOUBLE,
MODIFY COLUMN gdp_per_capita	DOUBLE,	
MODIFY COLUMN extreme_poverty	DOUBLE,
MODIFY COLUMN cardiovasc_death_rate	DOUBLE,
MODIFY COLUMN diabetes_prevalence	DOUBLE,
MODIFY COLUMN female_smokers	DOUBLE,
MODIFY COLUMN male_smokers	DOUBLE,	
MODIFY COLUMN handwashing_facilities	DOUBLE,	
MODIFY COLUMN hospital_beds_per_thousand	DOUBLE,
MODIFY COLUMN life_expectancy	DOUBLE,
MODIFY COLUMN human_development_index	DOUBLE,	
MODIFY COLUMN excess_mortality_cumulative_absolute	DOUBLE,	
MODIFY COLUMN excess_mortality_cumulative	DOUBLE,
MODIFY COLUMN excess_mortality	DOUBLE,	
MODIFY COLUMN excess_mortality_cumulative_per_million	DOUBLE;



LOAD DATA local INFILE "C:/Users/User/Desktop/Alex Data Analyst Bootcamp/Sql/Excel/covidVaccinations.csv"
INTO TABLE covid_vacc
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

drop table covid_vacc;
												
select * from covid_deaths;

-- Select data that will be using 

select location, date, total_cases, new_cases, total_deaths, population
from covid_deaths
order by 1,2;

-- Looking at total cases vs total deaths
select location,date, total_cases, total_deaths, (total_deaths/total_cases)*100 as 'Deaths per Cases'
from covid_deaths
order by 1,2;

-- Looking at total cases vs total deaths (United States)
select location,date, total_cases, total_deaths, (total_deaths/total_cases)*100 as 'Deaths per Cases'
from covid_deaths
where location like '%states'
and continent is not null
order by 2;

-- Looking at Total cases vs Population (United States)
select location, date, total_cases, population, (total_cases/population)*100 as 'Cases per Populaltion'
from covid_deaths
where location = 'United states'
and continent is not null
order by 1,2;

-- Looking at countries with the highest Infection rate

select location, population, max(total_cases) as 'Max of Total Cases', max((total_cases/population)*100) as 'Infection rate'
from covid_deaths
group by location, population
order by 4 desc;

-- Showing Countries with Highest Death Count per Population

select location, population, max(total_deaths) as 'Total Deaths', (max(total_deaths)/population)*100 as 'Death Rate per population'
from covid_deaths 
where location not in ('World', 'Europe', 'North America', 'Asia', 'South America', 'Oceania')
group by location, population
order by 3 desc;

-- Total deaths per continent
select location, max(total_deaths) as 'Total Deaths'
from covid_deaths
where continent = ''
and location not in ('World')
group by 1
order by 2 desc;

select * from covid_deaths;

-- Delete unecessary rows 
delete from covid_deaths
where location in ('High Income', 'Upper middle income', 'Lower middle income',
'European Union', 'Low income');


-- Showing continents with the highest death count per population
select location, population, max(total_deaths) as 'Total Deaths', (max(total_deaths)/population)*100 as 'Highest Death Count per Population'
from covid_deaths
where continent  = ''
and location not in ('World')
group by location, population
order by 4 desc;

-- GLOBAL NUMBERS

select date, sum(new_cases) 'New Cases', (sum(new_deaths)/sum(new_cases))*100 as DeathPercentage
from covid_deaths
where continent = ''
group by 1
order by 3 desc;

select date, sum(new_cases), sum(new_deaths) from covid_deaths
where date = '2020-01-05'
group by date;


-- Looking at Total Population vs Vaccinations
-- create cte

with PopvsVac as (
Select cd.date, cd.continent, cd.location, cd.population, cv.new_vaccinations, sum(new_vaccinations) over (partition by cd.location 
order by cd.location, cd.date) as RollingPeopleVaccinated
from covid_deaths cd
inner join covid_vacc cv
on cd.location = cv.location and
cd.date = cv.date
where cd.location not in ('World') and
cd.continent <> ''
order by 3,1)

select *, (RollingPeopleVaccinated/population)*100 as 'Vaccinations per Population'
from PopvsVac
where location = 'United States';

-- alternative way
-- Temp table

create temporary table PercentagePeopleVaccinated (

date date,
continent varchar(40),
location varchar(40),
population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric);

insert into PercentagePeopleVaccinated (date, continent, location, population,new_vaccinations,RollingPeopleVaccinated)
Select cd.date, cd.continent, cd.location, cd.population, cv.new_vaccinations, sum(new_vaccinations) over (partition by cd.location 
order by cd.location, cd.date) as RollingPeopleVaccinated
from covid_deaths cd
inner join covid_vacc cv
on cd.location = cv.location and
cd.date = cv.date
where cd.location not in ('World') and
cd.continent <> ''
order by 3,1;

select *, (RollingPeopleVaccinated/population)*100 as 'Vaccinations per Population'
from PercentagePeopleVaccinated;

-- Creating view to store data for later visualizations

 create view PercentagePeopleVaccinated as 
 Select cd.date, cd.continent, cd.location, cd.population, cv.new_vaccinations, sum(new_vaccinations) over (partition by cd.location 
order by cd.location, cd.date) as RollingPeopleVaccinated
from covid_deaths cd
inner join covid_vacc cv
on cd.location = cv.location and
cd.date = cv.date
where cd.location not in ('World') and
cd.continent <> '';

select * from PercentagePeopleVaccinated;
 

