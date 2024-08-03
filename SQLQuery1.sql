
with cte  as (
   select * from BikeShare_Year_0
   union all
   select * from BikeShare_Year_1
)
select 
dteday , cte.Year, Hour, Season, WeekDay, Rider_type, Riders, Price, COGS , Riders*Price as Revenue , Riders*Price - COGS as Profit
from cte LEFT JOIN Cost_Table
 on cte.Year = Cost_Table.Year