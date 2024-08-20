--. ������� ������� ���������� ������� �Software Development�
select count(*) 
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
join Subjects on Lectures.SubjectId = Subjects.Id
join Departments on Subjects.Id = Departments.Id
where Departments.Name = 'Computer Engineering'

go
--������� ������� ������, �� ���� �������� �Dave McQueen�.
select count(*)
from Lectures
join Teachers on Teachers.Id = Lectures.TeacherId
where Teachers.Name = 'Jack Underhill'

go
--������� ������� ������, �� ����������� � ������� �D201�
select count(*) 
from Lectures
where Lectures.LectureRoom = 'Room 101'

go

--������� ����� �������� �� ������� ������, �� ����������� � ���.
select LectureRoom,count(*)
from Lectures
group by LectureRoom

go

--. ������� ������� ��������, �� �������� ������ ��������� �Jack Underhill�.
select count(*)
from Groups
join GroupsLectures on Groups.Id = GroupsLectures.GroupId
join Lectures on GroupsLectures.LectureId = Lectures.Id
join Teachers on Lectures.TeacherId = Teachers.Id
where Teachers.Name = 'Jack Underhill'

go
--������� ������� ������ ���������� ���������� Computer
--Science.
select avg(Teachers.Salary) 
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
join Subjects on Lectures.SubjectId = Subjects.Id
join Departments on Subjects.Id = Departments.Id
join Faculties on Departments.FacultyId = Faculties.Id
where Faculties.Name = 'Computer Science'

go

--������� �������� �� ����������� ������� ��������
--����� ��� ����.



go
--������� ������� ���� ������������ ������.
select avg(Financing) 
from Departments

go

--������� ���� ����� ���������� �� ������� ������� ����
--��������.
select Name,Surname,count(Lectures.SubjectId)
from Teachers
join Lectures on Teachers.Id = Lectures.TeacherId
group by Teachers.Name,Teachers.Surname

go

--������� ������� ������ ����� �������� �����.
select DayOfWeek,count(*)
from GroupsLectures
group by DayOfWeek

go
--������� ������� ������ ��� ����� ���� ��������-��������.
select Teachers.Name,Teachers.Surname,Lectures.LectureRoom,count(*) 
from Lectures
join Teachers on Lectures.TeacherId = Teachers.Id
group by Teachers.Name, Teachers.Surname, Lectures.LectureRoom

go
--������� ����� ���������� �� ������� ��������, �� ��
--��� ���������.




