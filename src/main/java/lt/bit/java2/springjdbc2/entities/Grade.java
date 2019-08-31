package lt.bit.java2.springjdbc2.entities;

import java.time.LocalDate;

public class Grade {

    private Integer id;
    private Integer grade;
    private Integer studentId;
    private Integer classId;
    private LocalDate date;

    public Grade() {}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getClassId() {
        return classId;
    }

    public void setClassId(Integer classId) {
        this.classId = classId;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Grade{" +
                "id=" + id +
                ", grade=" + grade +
                ", studentId=" + studentId +
                ", classId=" + classId +
                ", date=" + date +
                '}';
    }
}
