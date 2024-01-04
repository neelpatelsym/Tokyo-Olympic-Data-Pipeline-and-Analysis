Select a.Discipline_SID,
a.Discipline,
b.Male,
b.Female,
b.Total
from discipline as a
join discipline_gender_fact b 
on a.Discipline_SID = b.Discipline_SID;