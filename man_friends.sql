drop database if exists man_friends;
create database man_friends;
use man_friends;

drop table if exists animals;
create table animals (
	id int auto_increment primary key,
    animal_group varchar(45)
    );
 insert into animals (animal_group) values
 ('Pets'),
 ('Pack_animals');
 


drop table if exists pack_animals;
create table pack_animals (
	id int auto_increment primary key,
    species varchar(45),
    animal_type int,
    foreign key (animal_type) references animals (id) on update cascade on delete cascade
    );
 
insert into pack_animals (species, animal_type) values
('Horses', 1),
('Camels', 1),
('Donkeys', 1);

drop table if exists pets;
create table pets (
	id int auto_increment primary key,
    species varchar(45),
    animal_type int,
    foreign key (animal_type) references animals (id) on update cascade on delete cascade
    );
    
insert into pets (species, animal_type) values
('Cats', 2),
('Dogs', 2),
('Hamsters', 2);

drop table if exists horses;
create table horses (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pack_animals_id int,
    foreign key (pack_animals_id) references pack_animals (id) on update cascade on delete cascade
    );
    
insert into horses (animal_name, command, birthdate, pack_animals_id)
values
('Horse1', 'horse_command1', '2020-01-01', 1),
('Horse2', 'horse_command2', '2021-01-01', 1),
('Horse3', 'horse_command3', '2022-01-01', 1);

drop table if exists camels;
create table camels (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pack_animals_id int,
    foreign key (pack_animals_id) references pack_animals (id) on update cascade on delete cascade
    );
    
insert into camels (animal_name, command, birthdate, pack_animals_id)
values
('Camel1', 'camel_command1', '2020-02-02', 2),
('Camel2', 'camel_command2', '2021-02-02', 2),
('Camel3', 'camel_command3', '2022-02-02', 2);

drop table if exists donkeys;
create table donkeys (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pack_animals_id int,
    foreign key (pack_animals_id) references pack_animals (id) on update cascade on delete cascade
    );
    
insert into donkeys (animal_name, command, birthdate, pack_animals_id)
values
('Donkey1', 'Donkey_command1', '2020-03-03', 3),
('Donkey2', 'Donkey_command2', '2021-03-03', 3),
('Donkey3', 'Donkey_command3', '2022-03-03', 3);

drop table if exists cats;
create table cats (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pets_id int,
    foreign key (pets_id) references pets (id) on update cascade on delete cascade
    );
    
insert into cats (animal_name, command, birthdate, pets_id)
values
('Cat1', 'Cat_command1', '2020-04-04', 1),
('Cat2', 'Cat_command2', '2021-04-04', 1),
('Cat3', 'Cat_command3', '2022-04-04', 1);

drop table if exists dogs;
create table dogs (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pets_id int,
    foreign key (pets_id) references pets (id) on update cascade on delete cascade
    );
    
insert into dogs (animal_name, command, birthdate, pets_id)
values
('Dog1', 'Dog_command1', '2020-05-05', 2),
('Dog2', 'Dog_command2', '2021-05-05', 2),
('Dog3', 'Dog_command3', '2022-05-05', 2);

drop table if exists hamsters;
create table hamsters (
	id int auto_increment primary key,
	animal_name varchar(45),
	command varchar(45),
	birthdate date,
    pets_id int,
    foreign key (pets_id) references pets (id) on update cascade on delete cascade
    );
    
insert into hamsters (animal_name, command, birthdate, pets_id)
values
('Hamster1', 'Hamster_command1', '2020-06-06', 3),
('Hamster2', 'Hamster_command2', '2021-06-06', 3),
('Hamster3', 'Hamster_command3', '2022-06-06', 3);

set sql_safe_updates = 0;
delete from camels;

select animal_name, command, birthdate, pack_animals_id from horses
union select animal_name, command, birthdate, pack_animals_id from donkeys;

drop table if exists young_animals;
create table young_animals (
animal_name varchar(45), 
birthdate date
);

insert into young_animals (animal_name, birthdate)
values

