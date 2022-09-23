with hotels as(
select * from [HotelRevenue].dbo.['2018$']
union 
select * from [HotelRevenue].dbo.['2019$']
union
select * from [HotelRevenue].dbo.['2020$']) 
select * from hotels
left join HotelRevenue.dbo.market_segment$
on hotels.market_segment=market_segment$.market_segment
left join HotelRevenue.dbo.meal_cost$
on meal_cost$.meal=hotels.meal