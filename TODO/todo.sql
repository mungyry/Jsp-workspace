# 데모 데이터베이스 생성하고 utf8mb4(모든문자, 한글 및 이모지 포함)
create database if not exists demo
default character set utf8mb4 collate utf8mb4_unicode_ci;

use demo;

drop table if exists users; #유저 테이블이 존재한다면 삭제
create table users(
	id int not null auto_increment, # 자동으로 1씩 증가 생성됨
    firstName varchar(20) default null,
    lastName varchar(20) default null,
	userName varchar(20) default null,
    password varchar(20) default null,
    PRIMARY KEY(id)
);

drop table if exists todos; # 할일 테이블이 존재한다면 삭제
create table todos (
	id int not null auto_increment, # 자동으로 1씩 증가 생성됨
    description varchar(255) default null, # 할일 설명
    is_done bit(1) not null,               # 완료됨
	target_date datetime(6) default null,  # 목표 날짜
    username varchar(255) default null,
    title varchar(255) default null,
    primary key(id)
);

