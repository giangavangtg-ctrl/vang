USE QuanLySinhVien;
SELECT * FROM Student;
SELECT *
FROM Student
WHERE Status = true;
SELECT *
FROM Subject
WHERE Credit < 10;
SELECT S.StudentId, S.StudentName, C.ClassName
FROM Student S 
JOIN Class C ON S.ClassId = C.ClassID
WHERE C.ClassName = 'A1';
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S 
JOIN Mark M ON S.StudentId = M.StudentId 
JOIN Subject Sub ON M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';