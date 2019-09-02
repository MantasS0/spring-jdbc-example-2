package lt.bit.java2.springjdbc2.controllers;

import lt.bit.java2.springjdbc2.entities.Classes;
import lt.bit.java2.springjdbc2.entities.Grade;
import lt.bit.java2.springjdbc2.entities.Student;
import lt.bit.java2.springjdbc2.services.StudentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.DecimalFormat;
import java.util.*;
import java.util.stream.Collector;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/students")
public class StudentController {

    private final StudentService studentService;

    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    public ResponseEntity<List<Student>> getAllStudents() {
        List<Student> students = studentService.getAllStudents();
        if (students == null || students.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(students);
    }

    @GetMapping("/avg")
    public ResponseEntity<Map<Integer, Double>> getEachClassAvg() {
        List<Student> students = studentService.getAllStudents();
        DecimalFormat df = new DecimalFormat("#.###");

//        List<Classes> classesList = students.stream()
//                .flatMap(s -> s.getClasses().stream())
//                .collect(Collectors.toList());

        List<Grade> gradeList = students.stream()
                .flatMap(s -> s.getClasses().stream()
                        .flatMap(c -> c.getGrades().stream()))
                .collect(Collectors.toList());

        Map<Integer, Double> result = gradeList.stream()
                .collect(Collectors.toMap(Grade::getClassId,
                        grade -> Double.valueOf(grade.getGrade()),
                        (oldVal, newVal) -> Double.valueOf(df.format((oldVal + newVal)/2))));

        return ResponseEntity.ok(result);


    }
}
