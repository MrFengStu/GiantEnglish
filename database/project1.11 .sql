/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2016/11/15 20:52:17                          */
/*==============================================================*/


drop table if exists Error;

drop table if exists Exam;

drop table if exists Login;

drop table if exists Notice;

drop table if exists Question;

drop table if exists QuestionType;

drop table if exists Role;

drop table if exists Score;

drop table if exists Selectt;

drop table if exists StudentInfo;

/*====================
==========================================*/
/* Table: Error                                                 */
/*==============================================================*/
create table Error
(
   errorId              int not null auto_increment,
   studentId            int,
   parentQuestionId       int,
   examId               int,
   questionId           int,
   isCollect		int,
   experience		varchar(500),
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
   examTime             int,
   examUrl              varchar(100),
   primary key (examId)
);


/*==============================================================*/
/* Table: Notice                                                */
/*==============================================================*/
create table Notice
(
   noticeId             int not null auto_increment,
   noticeContent        text,
   noticeTime           datetime,
   noticeType           varchar(100),
   noticeTitle          varchar(600),
   primary key (noticeId)
);

/*==============================================================*/
/* Table: Question                                              */
/*==============================================================*/
create table Question
(
   questionId           int not null auto_increment,
   parentQuestionId       int,
   questionContent      text,
   questionAnswer       varchar(500),
   questionExplain      varchar(500),
   questionScore        float,               
   primary key (questionId)
);

/*==============================================================*/
/* Table: ParentQuestion                                         */
/*==============================================================*/
create table ParentQuestion
(
   parentQuestionId       int not null auto_increment,
   parentQuestionName     varchar(200),
   parentQuestionArticle  text,
   parentQuestionTitle    varchar(500),
   description          varchar(500),
   examId               int,
   imgUrl		varchar(500),
   primary key (parentQuestionId)
);

/*==============================================================*/
/* Table: Score                                                 */
/*==============================================================*/
create table Score
(
   id                   int not null auto_increment,
   studentId            int,
   examId               int,
   parentQuestionId       int,
   questionId           int,
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
   password             varchar(100),
   url     		varchar(200),
   hobby		varchar(500),
   location		varchar(500),
   introduce		varchar(500),
   roleName             varchar(100),
   primary key (studentId)
);



