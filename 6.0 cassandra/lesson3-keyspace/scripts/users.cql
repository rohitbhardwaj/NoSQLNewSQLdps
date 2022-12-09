CREATE KEYSPACE IF NOT EXISTS nfjs
WITH replication = {'class':'SimpleStrategy','replication_factor':1};

USE nfjs;

create table users (
    id varchar primary key,
    first_name varchar,
    last_name varchar,
    email varchar,
    password varchar,
    reset_token varchar
) with comment = 'A table of users';

insert into users (id, first_name, last_name, email)
values ('rohit-bhardwaj', 'Rohit', 'Bhardwaj', 'rbhardwaj@kronos.com');

insert into users (id, first_name, last_name, email)
values ('neil-ford', 'Neil', 'Ford', 'neilford@neilford.com');
