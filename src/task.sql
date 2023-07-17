create  type house_type as enum('Apartment','House');
create type gender as enum('Female','Male');
create  type family_status as enum('Married','Single','Divorced','Widow');

create table addressess(
                           id serial primary key,
                           city varchar,
                           region varchar,
                           street  varchar

);

create  table customers(
                           id serial primary key,
                           first_name varchar,
                           last_name varchar,
                           email varchar,
                           data_of_birth date,
                           Gender  gender,
                           nationality varchar,
                           Familystatus family_status
);
create  table  agencies(
                           id serial primary key ,
                           name varchar,
                           phone_number varchar

);
create table owners(
                       id serial primary key ,
                       first_name varchar,
                       last_name varchar,
                       email varchar,
                       date_of_birth date,
                       Gender gender
);
create table houses(
                       id serial primary key ,
                       housetype house_type,
                       price numeric,
                       rating float,
                       description text,
                       room int,
                       fumiture boolean

);
create  table rent_infos(
    id serial primary key

);
drop table rent_infos;
drop table houses;
drop table agencies;
--alter  table languages alter column language set  not null ;
alter table agencies alter  column name set not null;
--alter table books add column language_id int references languages(id);
alter table agencies add column addressess_id  int references agencies;
alter  table  houses add column addressess_id int owner_id
