# 데이터베이스 웹샵이 없으면 새로 생성, utf8bm4 한글뿐만 아니라 이모지 포함한 문자 가능
create database if not exists webshop default character set utf8mb4 collate utf8mb4_unicode_ci;

use webshop;  #웹샵을 선택

# 테이블 유저가 있으면 삭제하고 새로 만듬
drop table if exists user;
create table user(
id int primary key auto_increment,
email varchar(50),
password varchar(50)
);

insert into users(email, password)
value('mungyry1@naver.com', '1234');