select * 
from coviddeaths
order by 3,4;

select location, date, total_cases, new_cases, total_deaths from coviddeaths
order by 1,2;

select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as deathpercentage
from coviddeaths
where location = "Afghanistan"
order by 1,2;

select location, date, total_cases, population, (total_cases/population)*100 as deathpercentage
from coviddeaths
order by 1,2;

select location, date, population, max(total_cases) as highestinfectioncount,max(total_cases/population)*100 as
percentpopulationinfected
from coviddeaths
where location ="Afghanistan"
group by population,location
order by percentpopulationinfected desc;

select location, max(total_deaths) as totaldeathcounts 
from coviddeaths
where location like "%Africa%"
group by location
order by totaldeathcounts desc;

select continent,max(total_deaths) as totaldeathcounts
from coviddeaths
where location like "Afghanistan"
group by continent;

select * 
from coviddeaths 
join covidvaccine 
on coviddeaths.location =covidvaccine.location
and coviddeaths.date =covidvaccine.date;

select coviddeaths.continent, coviddeaths.location, coviddeaths date, coviddeaths.population, covidvaccine.new_vaccinations
from coviddeaths 
join covidvaccine 
on coviddeaths.location =covidvaccine.location
and coviddeaths.date =covidvaccine.date
where continent is not null;




