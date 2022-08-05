
with hotels as(
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])

--select arrival_date_year,hotel ,
--ROUND(sum((stays_in_weekend_nights + stays_in_week_nights)*adr),2) as revenue 
--from hotels
--group by arrival_date_year,hotel
--order by revenue desc



--select * from hotels
--left join dbo.market_segment$
--on hotels.market_segment = market_segment$.market_segment
--left join dbo.meal_cost$
--on meal_cost$.meal = hotels.meal


select country,booking_changes from hotels
where distribution_channel != 'Corporate'
order by booking_changes desc 

