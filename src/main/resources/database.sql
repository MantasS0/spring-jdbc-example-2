# Student classes table
CREATE TABLE `classes`
(
    `id`   int(10) unsigned                    NOT NULL AUTO_INCREMENT,
    `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8 COLLATE = utf8_unicode_ci;

# Student grades table
CREATE TABLE `grades`
(
    `id`         int(10) unsigned NOT NULL AUTO_INCREMENT,
    `grade`      int(10) unsigned NOT NULL,
    `student_id` int(10) unsigned NOT NULL,
    `class_id`   int(10) unsigned NOT NULL,
    `date`       date             NOT NULL,
    PRIMARY KEY (`id`),
    KEY `FK_G_student_id_idx` (`student_id`),
    KEY `FK_G_classes_id_idx` (`class_id`),
    CONSTRAINT `FK_G_classes_id` FOREIGN KEY (`class_id`) REFERENCES `student_classes` (`classes_id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_G_student_id` FOREIGN KEY (`student_id`) REFERENCES `student_classes` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  AUTO_INCREMENT = 59
  DEFAULT CHARSET = utf8
  COLLATE = utf8_unicode_ci;

# Student-Classes relation table
CREATE TABLE `student_classes`
(
    `student_id` int(10) unsigned NOT NULL,
    `classes_id` int(10) unsigned NOT NULL,
    PRIMARY KEY (`student_id`, `classes_id`),
    KEY `FK_SC_classes_id` (`classes_id`),
    CONSTRAINT `FK_SC_classes_id` FOREIGN KEY (`classes_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `FK_SC_student_id` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_unicode_ci;

# Student table
CREATE TABLE `students`
(
    `id`      int(10) unsigned                    NOT NULL AUTO_INCREMENT,
    `name`    varchar(45) COLLATE utf8_unicode_ci NOT NULL,
    `surname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
    `email`   varchar(45) COLLATE utf8_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 11
  DEFAULT CHARSET = utf8
  COLLATE = utf8_unicode_ci;

# Insert primary data into tables
INSERT INTO `school`.`classes` (`name`)
VALUES ('Math_1');
INSERT INTO `school`.`classes` (`name`)
VALUES ('English_1');
INSERT INTO `school`.`classes` (`name`)
VALUES ('History_1');

INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Johna', 'Rhyan', 'j.rhyan@gmail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Arnold', 'Boltovic', 'a.bolt@yahoo.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Cindy', 'Craufort', 'c.crauf@mail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Mathew', 'Kobacowitch', 'k.math@gmail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Robert', 'Kobacowitch', 'r.koby@yahoo.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Linda', 'Brown', 'l.brown@gmail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Elizabeth', 'Smith', 'eliza.s@gmail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Sofie', 'Gonzales', 'sofie.gonz@mail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Rupert', 'Armstrong', 'r.strong@mail.com');
INSERT INTO `school`.`students` (`name`, `surname`, `email`)
VALUES ('Jamie', 'Oliver', 'j.oliv@gmail.com');

INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (1, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (1, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (1, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (2, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (2, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (3, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (4, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (4, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (5, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (5, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (6, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (7, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (7, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (7, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (8, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (8, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (9, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (9, 3);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (10, 1);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (10, 2);
INSERT INTO `school`.`student_classes` (`student_id`, `classes_id`)
VALUES (10, 3);

INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (10, 1, 1, '2019-08-31');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (8, 2, 2, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (5, 3, 1, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (4, 4, 1, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (6, 5, 1, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (5, 6, 2, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (10, 1, 2, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (9, 7, 1, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (7, 8, 1, '2019-08-22');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (6, 2, 2, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (4, 9, 2, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (6, 3, 1, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (5, 10, 1, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (2, 8, 3, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (10, 4, 2, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (8, 1, 1, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (9, 10, 2, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (4, 7, 2, '2019-08-26');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (5, 3, 1, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (6, 10, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (8, 9, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (7, 2, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (8, 6, 2, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (9, 8, 1, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (2, 5, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (1, 4, 1, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (10, 7, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (5, 1, 3, '2019-08-27');
INSERT INTO `school`.`grades` (`grade`, `student_id`, `class_id`, `date`)
VALUES (6, 10, 1, '2019-08-27');


### Select statements ###
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
         LEFT OUTER JOIN student_classes scr ON students.id = scr.student_id
         INNER JOIN classes ON scr.classes_id = classes.id
         INNER JOIN grades ON students.id = grades.student_id AND scr.classes_id = grades.class_id
ORDER BY students.id;