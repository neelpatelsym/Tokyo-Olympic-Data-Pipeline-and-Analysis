SELECT a.Athlete_SID,
a.Athlete_Name,
a.Age,
a.Gender,
b.Country_SID,
b.Country,
c.Discipline_SID,
c.Discipline,
d.Gold_Medals,
d.Silver_Medals,
d.Bronze_Medals,
e.Event_SID,
e.Event,
case when Gold_Medals > 0 then 'Gold'
when Silver_Medals > 0 then 'Silver'
when Bronze_Medals > 0 then 'Bronze' end Medal
from athletes a 
join countries b 
on a.Country_SID = b.Country_SID
join discipline c 
on a.Discipline_SID = c.Discipline_SID
join medals_fact d  
on a.Athlete_SID = d.Athlete_SID
join event e 
on d.Event_SID = e.Event_SID

