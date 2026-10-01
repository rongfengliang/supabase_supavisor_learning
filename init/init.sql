create table if not exists test (
    id serial primary key,
    name text not null
);

insert into test (name) values ('example');

insert into test (name) values ('example2');