create table if not exists testv1 (
    id serial primary key,
    name text not null
);

insert into testv1 (name) values ('example');

insert into testv1 (name) values ('example2');