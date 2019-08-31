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

INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (1, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (1, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (1, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (2, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (2, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (3, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (4, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (4, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (5, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (5, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (6, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (7, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (7, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (7, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (8, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (8, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (9, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (9, 3);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (10, 1);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
VALUES (10, 2);
INSERT INTO `school`.`student_class_relation` (`student_id`, `class_id`)
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