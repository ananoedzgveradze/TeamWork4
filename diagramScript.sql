CREATE TABLE `Person` (
  `id` int PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `id_number` int NOT NULL,
  `adress` varchar(255) NOT NULL,
  `second_adress` varchar(255),
  `apart_number` int,
  `birth_date` date NOT NULL,
  `gender` varchar(255) NOT NULL
);

CREATE TABLE `Student` (
  `id` int,
  `user` int
);

CREATE TABLE `Lecturer` (
  `id` int PRIMARY KEY,
  `user` int,
  `level` varchar(255),
  `account_number` varchar(255)
);

CREATE TABLE `Manager` (
  `id` int,
  `user` int
);

CREATE TABLE `Course` (
  `id` int PRIMARY KEY,
  `course_name` varchar(255) NOT NULL
);

CREATE TABLE `Faculty` (
  `id` int PRIMARY KEY,
  `name` varchar(255) NOT NULL
);

CREATE TABLE `Subject` (
  `id` int PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `Course_id` int NOT NULL,
  `Faculty_id` int NOT NULL
);

CREATE TABLE `Lectures` (
  `id` int PRIMARY KEY,
  `subject_name` int,
  `time` timestamp NOT NULL
);

ALTER TABLE `Person` ADD FOREIGN KEY (`id`) REFERENCES `Student` (`user`);

ALTER TABLE `Person` ADD FOREIGN KEY (`id`) REFERENCES `Lecturer` (`user`);

ALTER TABLE `Person` ADD FOREIGN KEY (`id`) REFERENCES `Manager` (`user`);

ALTER TABLE `Faculty` ADD FOREIGN KEY (`id`) REFERENCES `Subject` (`Faculty_id`);

ALTER TABLE `Course` ADD FOREIGN KEY (`id`) REFERENCES `Subject` (`Course_id`);

ALTER TABLE `Faculty` ADD FOREIGN KEY (`id`) REFERENCES `Manager` (`id`);

ALTER TABLE `Subject` ADD FOREIGN KEY (`id`) REFERENCES `Lecturer` (`user`);

ALTER TABLE `Faculty` ADD FOREIGN KEY (`id`) REFERENCES `Student` (`id`);

ALTER TABLE `Lectures` ADD FOREIGN KEY (`subject_name`) REFERENCES `Subject` (`id`);
