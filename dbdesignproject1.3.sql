/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/11/3 11:11:13                           */
/*==============================================================*/


drop table if exists Error;

drop table if exists Exam;

drop table if exists Login;

drop table if exists Notice;

drop table if exists Power;

drop table if exists Question;

drop table if exists QuestionType;

drop table if exists QuestionTypeExam;

drop table if exists Role;

drop table if exists RolePower;

drop table if exists Score;

drop table if exists Selectt;

drop table if exists StudentInfo;

/*==============================================================*/
/* Table: Error                                                 */
/*==============================================================*/
create table Error
(
   errorId              int not null auto_increment,
   studentId            int,
   questionTypeId       int,
   examId               int,
   primary key (errorId)
);

/*==============================================================*/
/* Table: Exam                                                  */
/*==============================================================*/
create table Exam
(
   examId               int not null auto_increment,
   examType             varchar(200),
   examName             text,
   primary key (examId)
);

/*==============================================================*/
/* Table: Login                                                 */
/*==============================================================*/
create table Login
(
   loginName            varchar(100) not null,
   password             varchar(100),
   roleId               int,
   primary key (loginName)
);

/*==============================================================*/
/* Table: Notice                                                */
/*==============================================================*/
create table Notice
(
   noticeId             int not null auto_increment,
   noticeContent        text,
   noticeTime           datetime,
   primary key (noticeId)
);

/*==============================================================*/
/* Table: Power                                                 */
/*==============================================================*/
create table Power
(
   powerId              int not null auto_increment,
   powerName            varchar(100),
   primary key (powerId)
);

/*==============================================================*/
/* Table: Question                                              */
/*==============================================================*/
create table Question
(
   questionId           int not null auto_increment,
   questionTypeId       int,
   questionContent      text,
   questionAnswer       text,
   primary key (questionId)
);

/*==============================================================*/
/* Table: QuestionType                                          */
/*==============================================================*/
create table QuestionType
(
   questionTypeId       int not null auto_increment,
   questionTypeName     varchar(200),
   questionTypeArticle  text,
   primary key (questionTypeId)
);

/*==============================================================*/
/* Table: QuestionTypeExam                                      */
/*==============================================================*/
create table QuestionTypeExam
(
   id                   int not null auto_increment,
   examId               int,
   questionTypeId       int,
   primary key (id)
);

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role
(
   roleId               int not null auto_increment,
   roleName             varchar(100),
   primary key (roleId)
);

/*==============================================================*/
/* Table: RolePower                                             */
/*==============================================================*/
create table RolePower
(
   id                   int not null auto_increment,
   roleId               int,
   powerId              int,
   primary key (id)
);

/*==============================================================*/
/* Table: Score                                                 */
/*==============================================================*/
create table Score
(
   id                   int not null auto_increment,
   studentId            int,
   examId               int,
   score                float,
   primary key (id)
);

/*==============================================================*/
/* Table: Selectt                                               */
/*==============================================================*/
create table Selectt
(
   selecttId            int not null auto_increment,
   selecttName          varchar(100),
   selecttContent       text,
   questionId           int,
   primary key (selecttId)
);

/*==============================================================*/
/* Table: StudentInfo                                           */
/*==============================================================*/
create table StudentInfo
(
   studentId            int not null auto_increment,
   loginName            varchar(100),
   email                varchar(500),
   petName              varchar(100),
   primary key (studentId)
);

