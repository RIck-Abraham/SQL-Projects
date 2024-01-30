SELECT ls.LessonDateTime, s.FirstName, s.LastName, h.RegisteredName
FROM LessonSchedule as ls 
	LEFT JOIN Student as s
	ON ls.StudentID = s.ID
	INNER JOIN Horse as h
	ON ls.HorseID = h.ID
WHERE CAST(ls.LessonDateTime AS DATE) = '2020-02-01'
ORDER BY ls.LessonDateTime ASC, h.RegisteredName ASC