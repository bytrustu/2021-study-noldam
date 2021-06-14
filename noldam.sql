CREATE DATABASE noldam default CHARACTER SET UTF8;
use noldam;

create table `Depart` (
`depart_id` int not null auto_increment primary key,
`depart_name` varchar(50)
);

create table `Team` (
`team_id` int not null auto_increment primary key,
`team_name` varchar(50),
`depart_id` int not null,
FOREIGN KEY (`depart_id`) REFERENCES `Depart` (`depart_id`) ON DELETE CASCADE
);


create table `Program` (
`team_id` int not null,
`program_id` int not null auto_increment primary key,
`program_name` varchar(50),
`program_selling` int not null,
FOREIGN KEY (`team_id`) REFERENCES `Team` (`team_id`) ON DELETE CASCADE
);

create table `User` (
`user_id` int not null auto_increment primary key,
`user_name` varchar(50),
`user_visit` int not null
);

create table `ProgramInfo` (
`program_id` int not null ,
`user_id` int not null,
`times` int not null,
`create_date` timestamp not null default current_timestamp,
FOREIGN KEY (`program_id`) REFERENCES `Program` (`program_id`) ON DELETE CASCADE,
FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON DELETE CASCADE
);



insert into Depart (depart_name) values('프로덕트');
insert into Depart (depart_name) values('운영');
insert into Depart (depart_name) values('마케팅');
insert into Depart (depart_name) values('서비스');

insert into Team (team_name, depart_id) values('로즈', 1);
insert into Team (team_name, depart_id) values('댄', 1);
insert into Team (team_name, depart_id) values('품파', 1);
insert into Team (team_name, depart_id) values('캄', 1);
insert into Team (team_name, depart_id) values('타미', 2);
insert into Team (team_name, depart_id) values('루디', 3);
insert into Team (team_name, depart_id) values('예스', 4);


insert into Program (team_id, program_name, program_selling) values(1,'로즈의 봄을찾기', 22);
insert into Program (team_id, program_name, program_selling) values(4, '캄의 애니멀봐', 100);
insert into Program (team_id, program_name, program_selling) values(2, '댄의 호두일기', 55);
insert into Program (team_id, program_name, program_selling) values(5,'루디의 삼총사', 11);
insert into Program (team_id, program_name, program_selling) values(5,'루디의 북토크', 52);

insert into User(user_name, user_visit) values('호랑이', 4);
insert into User(user_name, user_visit) values('강아지', 4);
insert into User(user_name, user_visit) values('거북이', 4);
insert into User(user_name, user_visit) values('고양이', 13);
insert into User(user_name, user_visit) values('사자', 8);
insert into User(user_name, user_visit) values('늑대', 9);
insert into User(user_name, user_visit) values('곰', 16);
insert into User(user_name, user_visit) values('병아리', 11);
insert into User(user_name, user_visit) values('코끼리', 15);
insert into User(user_name, user_visit) values('월요일이좋은진솔이', 24);


insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 1, 10, '2021-06-01 21:38:21');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 1, 5, '2021-06-12 21:38:40');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 1, 6, '2021-06-15 21:39:00');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 2, 5, '2021-06-05 21:39:19');
insert into ProgramInfo(program_id, user_id, times, create_date) values(3, 2, 2, '2021-06-28 21:39:19');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 2, 4, '2021-06-28 21:39:20');
insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 3, 10, '2021-06-20 21:39:54');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 3, 1, '2021-06-15 21:39:55');
insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 4, 1, '2021-06-03 21:40:13');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 4, 2, '2021-06-05 21:40:13');
insert into ProgramInfo(program_id, user_id, times, create_date) values(3, 4, 3, '2021-06-06 21:40:14');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 4, 4, '2021-06-01 21:40:15');
insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 5, 2, '2021-06-11 21:40:31');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 5, 3, '2021-06-15 21:40:31');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 6, 2, '2021-06-16 21:40:41');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 7, 1, '2021-06-17 21:40:52');
insert into ProgramInfo(program_id, user_id, times, create_date) values(3, 7, 1, '2021-06-19 21:40:53');
insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 8, 5, '2021-06-10 21:41:12');
insert into ProgramInfo(program_id, user_id, times, create_date) values(3, 8, 5, '2021-06-14 21:41:13');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 9, 5, '2021-06-01 21:41:25');
insert into ProgramInfo(program_id, user_id, times, create_date) values(1, 10, 10, '2021-06-04 21:41:52');
insert into ProgramInfo(program_id, user_id, times, create_date) values(2, 10, 10, '2021-06-03 21:41:53');
insert into ProgramInfo(program_id, user_id, times, create_date) values(3, 10, 10, '2021-06-09 21:41:54');
insert into ProgramInfo(program_id, user_id, times, create_date) values(4, 10, 10, '2021-06-29 21:41:54');