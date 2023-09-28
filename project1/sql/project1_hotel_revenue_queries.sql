
/* Combining the three datasets into one */ 

WITH hotels 
as(SELECT * FROM `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.rev_2018` 
UNION ALL 
SELECT * FROM `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.rev_2019` 
UNION ALL 
SELECT * FROM `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.rev_2020`)
  
/*
Using inner join funntion to join 'market_seg' database to 'hotels' database
on the column 'market_segment', resulting in the addition of the 'discont'- 
column to our combined databse of 'hotels'
Further performing left join to add in the meal data, on the column 'meal' 
*/
  
select * from hotels
join `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.market_segment`
on hotels.market_segment = `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.market_segment`.market_segment 
left join `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.meal_cost`
on `portfolio-project-1-17092023.Hotel_revenue_portfolio_project.meal_cost`.meal = hotels.meal
  
/* Calcualting the total revenue and grouping by 'arrival_date_year' and 'hotel'*/
  
select
 arrival_date_year, hotel,
round(sum((stays_in_week_nights + stays_in_weekend_nights)* adr),2) as revenue
 from hotels
group by  arrival_date_year, hotel
