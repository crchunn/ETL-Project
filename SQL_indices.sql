create table econ_index(
	index int,
	"Country_Name" varchar Primary Key,
	"Last_Year_Score" varchar,
	"Property_Rights" varchar,
	"Judicial_Effectiveness" varchar,
	"Government_Integrity" varchar,
	"Population_Millions" varchar,
	"GDP_Growth_Rate_Percent" varchar,
	"GDP_per_Capita_PPP" varchar,
	"Unemployment_Percent" varchar,
	"Inflation_Percent" varchar,
	"Public_Debt_Percent_of_GDP" varchar
);

create table happiness_index(
	index int,
	"Country_Name" varchar Primary Key,
 	"Ladder_Score" varchar,
 	"Social_Support" varchar,
 	"Healthy_Life_Expectancy" varchar,
 	"Freedom_Choices" varchar,
 	"Generosity" varchar,
 	"Perceptions_Corruption" varchar
);

select * from econ_index;

select * from happiness_index;

select i."Country_Name", i."Last_Year_Score", i."Property_Rights", i."Judicial_Effectiveness",
	i."Government_Integrity", i."Population_Millions", i."GDP_Growth_Rate_Percent", i."GDP_per_Capita_PPP", i."Unemployment_Percent", 
	i."Inflation_Percent", i."Public_Debt_Percent_of_GDP", f."Ladder_Score", f."Social_Support", f."Healthy_Life_Expectancy", 
	f."Freedom_Choices", f."Generosity", f."Perceptions_Corruption" 
from econ_index as i
	inner join happiness_index as f
		on (i."Country_Name" = f."Country_Name")  

SELECT *
    FROM econ_index INNER JOIN happiness_index ON (econ_index."Country_Name" = happiness_index."Country_Name");
	