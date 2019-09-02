package lt.bit.java2.springjdbc2.services;

import lt.bit.java2.springjdbc2.entities.Classes;
import lt.bit.java2.springjdbc2.entities.Grade;
import lt.bit.java2.springjdbc2.entities.Student;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;


@Service
public class StudentService {

    private final JdbcTemplate jdbcTemplate;
    private final StudentClassGradeRowMapper rowMapper;

    public StudentService(JdbcTemplate jdbcTemplate, StudentClassGradeRowMapper rowMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.rowMapper = rowMapper;
    }

    public List<Student> getAllStudents() {
        List<Student> studentList = jdbcTemplate.query("SELECT students.id id, " +
                "students.name name, " +
                "students.surname, " +
                "students.email, " +
                "classes.id c_id, " +
                "classes.name c_name, " +
                "grades.id g_id, " +
                "grade, " +
                "grades.date g_date, " +
                "grades.student_id g_stud_id, " +
                "grades.class_id g_class_id " +
                "FROM students " +
                "LEFT OUTER JOIN student_classes scr ON students.id = scr.student_id " +
                "INNER JOIN classes ON scr.classes_id = classes.id " +
                "INNER JOIN grades ON students.id = grades.student_id AND scr.classes_id = grades.class_id " +
                "ORDER BY students.id", rowMapper);

        studentList = studentList.stream()
                .filter(it -> it.getClasses() != null)
                .collect(Collectors.groupingBy(Student::getId)).values().stream()
                .map(studList -> {
                    List<Classes> classes = studList.stream()
                            .flatMap(stud -> stud.getClasses().stream())
                            .collect(Collectors.toList());
                    studList.get(0).setClasses(classes);
                    return studList.get(0);
                })
                .collect(Collectors.toList()).stream()
                    .map(stud -> {
                        List<Classes> classesList = stud.getClasses().stream()
                                .collect(Collectors.groupingBy(Classes::getId)).values().stream()
                                .map(clList -> {
                                    List<Grade> grades = clList.stream()
                                            .flatMap(cl -> cl.getGrades().stream())
                                            .collect(Collectors.toList());
                                    clList.get(0).setGrades(grades);
                                    return clList.get(0);
                                }).collect(Collectors.toList());
                        stud.setClasses(classesList);
                        return stud;
                    }).collect(Collectors.toList());

        return studentList;
    }


}
