package lt.bit.java2.springjdbc2.services;

import lt.bit.java2.springjdbc2.entities.Classes;
import lt.bit.java2.springjdbc2.entities.Grade;
import lt.bit.java2.springjdbc2.entities.Student;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class StudentClassGradeRowMapper implements RowMapper<Student> {

    @Override
    public Student mapRow(ResultSet rs, int rowNum) throws SQLException {

        Student student = new Student();
        student.setId(rs.getInt("id"));
        student.setName(rs.getString("name"));
        student.setSurname(rs.getString("surname"));
        student.setEmail(rs.getString("email"));

        Classes studentClass = new Classes();
        studentClass.setId(rs.getInt("c_id"));
        studentClass.setName(rs.getString("c_name"));

        Grade grade = new Grade();
        grade.setId(rs.getInt("g_id"));
        grade.setGrade(rs.getInt("grade"));
        grade.setDate(rs.getDate("g_date").toLocalDate());
        grade.setStudentId(rs.getInt("g_stud_id"));
        grade.setClassId(rs.getInt("g_class_id"));

        List<Grade> l1 = new ArrayList<>();
        l1.add(grade);
        studentClass.setGrades(l1);

        List<Classes> l2 = new ArrayList<>();
        l2.add(studentClass);
        student.setClasses(l2);

        return student;
    }
}
