--. ¬ивести к≥льк≥сть викладач≥в кафедри ЂSoftware Developmentї
select count(*) 
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
join Subjects on Lectures.SubjectId = Subjects.Id
join Departments on Subjects.Id = Departments.Id
where Departments.Name = 'Computer Engineering'

go
--¬ивести к≥льк≥сть лекц≥й, €к≥ читаЇ викладач УDave McQueenФ.
select count(*)
from Lectures
join Teachers on Teachers.Id = Lectures.TeacherId
where Teachers.Name = 'Jack Underhill'

go
--¬ивести к≥льк≥сть зан€ть, €к≥ провод€тьс€ в аудитор≥њ УD201Ф
select count(*) 
from Lectures
where Lectures.LectureRoom = 'Room 101'

go

--¬ивести назви аудитор≥й та к≥льк≥сть лекц≥й, що провод€тьс€ в них.
select LectureRoom,count(*)
from Lectures
group by LectureRoom

go

--. ¬ивести к≥льк≥сть студент≥в, €к≥ в≥дв≥дують лекц≥њ викладача УJack UnderhillФ.
select count(*)
from Groups
join GroupsLectures on Groups.Id = GroupsLectures.GroupId
join Lectures on GroupsLectures.LectureId = Lectures.Id
join Teachers on Lectures.TeacherId = Teachers.Id
where Teachers.Name = 'Jack Underhill'

go
--¬ивести середню ставку викладач≥в факультету Computer
--Science.
select avg(Teachers.Salary) 
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
join Subjects on Lectures.SubjectId = Subjects.Id
join Departments on Subjects.Id = Departments.Id
join Faculties on Departments.FacultyId = Faculties.Id
where Faculties.Name = 'Computer Science'

go

--¬ивести м≥н≥мальну та максимальну к≥льк≥сть студент≥в
--серед ус≥х груп.



go
--¬ивести середн≥й фонд ф≥нансуванн€ кафедр.
select avg(Financing) 
from Departments

go

--¬ивести повн≥ ≥мена викладач≥в та к≥льк≥сть читаних ними
--дисципл≥н.
select Name,Surname,count(Lectures.SubjectId)
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
group by Teachers.Name,Teachers.Surname

go

--¬ивести к≥льк≥сть лекц≥й щодн€ прот€гом тижн€.
select DayOfWeek,count(*)
from GroupsLectures
group by DayOfWeek

go
--¬ивести к≥льк≥сть лекц≥й дл€ кожноњ пари викладач-аудитор≥€.
select Teachers.Name,Teachers.Surname,Lectures.LectureRoom,count(*) 
from Lectures
join Teachers on Lectures.TeacherId = Teachers.Id
group by Teachers.Name, Teachers.Surname, Lectures.LectureRoom

go
--¬ивести назви факультет≥в та к≥льк≥сть дисципл≥н, €к≥ на
--них читаютьс€.




