use demo;

create table if not exists emp(
	id int AUTO_INCREMENT,
	name varchar(50),
	PRIMARY KEY(id)
);

select * from emp;

insert into emp(name) values("펭수");
insert into emp(name) values("오리");
insert into emp(name) values("호랑");
insert into emp(name) values("사자");
insert into emp(name) values("기린");

select * from members;

create table members(
id int unsigned not null auto_increment,
name varchar(255) default null,
phone varchar(100) default null,
email varchar(255) default null,
primary key(id)
) auto_increment=1;

INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Andrews","010-3304-8182","sem.mollis@google.com"),
  ("Carlson","010-1172-7630","condimentum.eget@naver.com"),
  ("Hanson","010-4321-5922","vulputate@naver.com"),
  ("Lane","010-4141-6439","aliquet.nec@google.com"),
  ("Campbell","010-1266-3654","molestie.sodales@naver.com"),
  ("Hill","010-5221-8343","sit.amet@google.com"),
  ("Mitchell","010-4585-6483","tempus@google.com"),
  ("Mcconnell","010-3573-5755","lorem.tristique@naver.com"),
  ("Norman","010-7705-4313","quam@google.com"),
  ("Brewer","010-6201-0376","et.commodo.at@google.com"),
  ("Suarez","010-4174-1553","enim.sed@naver.com"),
  ("Alvarado","010-7540-6371","malesuada.id.erat@google.com"),
  ("Mcintosh","010-5491-4808","justo.eu@naver.com"),
  ("Peters","010-1601-2438","integer.eu@google.com"),
  ("Foley","010-5791-6451","magnis.dis@google.com"),
  ("Hickman","010-3187-3922","convallis.convallis.dolor@google.com"),
  ("Rosales","010-6678-6134","felis.eget@naver.com"),
  ("O'connor","010-4907-9217","venenatis.a@google.com"),
  ("Dalton","010-2645-3866","etiam.imperdiet@naver.com"),
  ("Hyde","010-2158-4411","felis@google.com"),
  ("Medina","010-0596-7512","nascetur.ridiculus.mus@naver.com"),
  ("Petersen","010-6833-0826","vel.mauris@google.com"),
  ("Pena","010-4105-2628","risus.in@naver.com"),
  ("Hogan","010-7021-5422","gravida.sit.amet@google.com"),
  ("Brady","010-9659-8248","egestas.lacinia@google.com"),
  ("Gallagher","010-3038-1466","maecenas.iaculis@google.com"),
  ("Welch","010-8471-3523","neque.tellus@google.com"),
  ("Battle","010-4970-8278","at@naver.com"),
  ("West","010-5070-6959","vestibulum.mauris@google.com"),
  ("Bowman","010-7926-5172","nam@google.com"),
  ("Puckett","010-3621-2826","cursus.et.magna@google.com"),
  ("Greene","010-6132-3264","egestas@naver.com"),
  ("Hutchinson","010-4074-4353","duis.at.lacus@naver.com"),
  ("Drake","010-6665-8929","nulla.semper.tellus@naver.com"),
  ("Day","010-6346-8352","lacus.cras@google.com"),
  ("Cannon","010-7239-7515","feugiat@naver.com"),
  ("Morales","010-5230-6261","dui.lectus@naver.com"),
  ("Ellison","010-2987-3330","magna.ut@naver.com"),
  ("Elliott","010-3123-8758","pellentesque@google.com"),
  ("Nixon","010-6477-5339","feugiat.lorem@google.com"),
  ("Mullen","010-8525-6338","aliquet@google.com"),
  ("Gordon","010-2831-4866","integer.in@naver.com"),
  ("Sparks","010-6215-8432","mi.pede@google.com"),
  ("Becker","010-6156-4252","mi.aliquam@google.com"),
  ("Merrill","010-3692-6214","fringilla.est@google.com"),
  ("Hurst","010-0523-7774","et.netus@google.com"),
  ("Ayers","010-3246-2381","ipsum@google.com"),
  ("Miranda","010-2848-1763","senectus@naver.com"),
  ("Kane","010-5706-7428","neque.vitae@naver.com"),
  ("Chan","010-8856-4561","ligula.aenean@google.com");
INSERT INTO members (`name`,`phone`,`email`)
VALUES
  ("Molina","010-3457-7748","mauris@naver.com"),
  ("Beck","010-4769-5397","ultricies@naver.com"),
  ("Stark","010-2246-7016","facilisis.non@naver.com"),
  ("Alvarez","010-0435-2919","lectus.rutrum.urna@naver.com"),
  ("Barber","010-1532-7848","in.ornare.sagittis@google.com"),
  ("Holder","010-5379-1596","vel.convallis@naver.com"),
  ("Cobb","010-5634-3715","natoque.penatibus@naver.com"),
  ("Kennedy","010-9862-9452","in@naver.com"),
  ("Pate","010-6552-6312","lectus.rutrum@google.com"),
  ("Bradley","010-9773-5246","scelerisque.scelerisque@naver.com"),
  ("Peters","010-9362-4751","mus.proin.vel@google.com"),
  ("Mooney","010-1484-2373","pede.ac.urna@naver.com"),
  ("Taylor","010-7686-7071","eget.ipsum@naver.com"),
  ("Bowen","010-3452-1487","inceptos.hymenaeos.mauris@google.com"),
  ("Sanford","010-1347-8522","velit.eget.laoreet@google.com"),
  ("Hanson","010-8193-3804","non.cursus@google.com"),
  ("Walters","010-7400-5886","vestibulum.lorem@google.com"),
  ("Daniel","010-6818-3186","scelerisque.neque@google.com"),
  ("Floyd","010-4571-7440","ut.aliquam@google.com"),
  ("Chan","010-2778-1265","enim.nunc@naver.com"),
  ("Russo","010-2134-7578","sapien.molestie@naver.com"),
  ("Gaines","010-2815-1245","molestie@google.com"),
  ("Long","010-7518-9305","ut.mi@google.com"),
  ("Rose","010-9321-7371","risus.duis.a@google.com"),
  ("Byrd","010-8315-9792","morbi.metus@naver.com"),
  ("Coffey","010-1601-2711","metus@naver.com"),
  ("Marks","010-4053-5266","nunc.quisque@google.com"),
  ("Padilla","010-4181-2169","consequat.auctor@google.com"),
  ("Schwartz","010-3370-1567","nulla.integer@google.com"),
  ("Mckinney","010-7431-7355","maecenas.malesuada@google.com"),
  ("Allen","010-4326-8642","dui.augue@google.com"),
  ("Duke","010-3851-5113","auctor@naver.com"),
  ("Adkins","010-8116-9225","et.magnis@google.com"),
  ("Morrow","010-2871-6486","nunc.lectus@naver.com"),
  ("Hopper","010-5936-3865","a.magna.lorem@google.com"),
  ("Carter","010-9831-8277","libero.mauris.aliquam@google.com"),
  ("Meyers","010-4482-6888","nulla@google.com"),
  ("Floyd","010-4228-5984","integer.in@google.com"),
  ("Ramos","010-7689-1858","velit.justo@naver.com"),
  ("Barlow","010-2110-6503","magna.tellus@naver.com"),
  ("Patterson","010-5277-6638","sodales.at@google.com"),
  ("Pugh","010-1102-3936","erat.nonummy@naver.com"),
  ("Padilla","010-1712-8268","sollicitudin@naver.com"),
  ("Carson","010-2271-8450","mi.felis@naver.com"),
  ("White","010-1032-7056","integer@naver.com"),
  ("Mcguire","010-0534-7866","at.risus@google.com"),
  ("Knight","010-3167-5832","eleifend.cras.sed@naver.com"),
  ("Ellis","010-8518-2392","etiam@google.com"),
  ("Berger","010-4588-4786","lacinia@google.com"),
  ("Osborne","010-3761-5611","id.mollis@google.com");
