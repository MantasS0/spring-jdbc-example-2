package lt.bit.java2.springjdbc2.services;

import lt.bit.java2.springjdbc2.entities.Student;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class StudentService {

    private final JdbcTemplate jdbcTemplate;
    private final StudentClassGradeRowMapper rowMapper;

    public StudentService(JdbcTemplate jdbcTemplate, StudentClassGradeRowMapper rowMapper){
        this.jdbcTemplate = jdbcTemplate;
        this.rowMapper = rowMapper;
    }

    public List<Student> getAllStudents(){
        return jdbcTemplate.query("SELECT students.id id, " +
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
                "LEFT OUTER JOIN student_class_relation scr ON students.id = scr.student_id " +
                "INNER JOIN classes ON scr.class_id = classes.id " +
                "INNER JOIN grades ON students.id = grades.student_id AND scr.class_id = grades.class_id " +
                "ORDER BY students.id", rowMapper);
    }



}
