SELECT students.id       id,
       students.name     name,
       students.surname,
       students.email,
       classes.id        c_id,
       classes.name      c_name,
       grades.id         g_id,
       grade,
       grades.date       g_date,
       grades.student_id g_stud_id,
       grades.class_id   g_class_id
FROM students
         LEFT OUTER JOIN student_class_relation scr ON students.id = scr.student_id
         INNER JOIN classes ON scr.class_id = classes.id
         INNER JOIN grades ON students.id = grades.student_id AND scr.class_id = grades.class_id
ORDER BY students.id;