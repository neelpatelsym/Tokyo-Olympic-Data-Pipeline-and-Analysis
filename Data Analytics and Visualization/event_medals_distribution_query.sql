-- Countries wise medal:
select b.Country,
a.Gold,
a.Silver,
a.Bronze,
a.Total,
a.Rank,
Rank() Over(Order by a.Gold DESC) as Gold_Rank,
Rank() Over(Order by a.Silver DESC) as Silver_Rank,
Rank() Over (Order by a.Bronze DESC) as Bronnze_Rank
from Countries_medal_fact a 
join countries b 
on a.Country_SID = b.Country_SID
order by a.Rank;