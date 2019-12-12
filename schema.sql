create table account (id serial primary key, name text not null, branch int not null, number int not null, status text not null);
create index CONCURRENTLY account_branch_number_idx on account (branch, number);

--bulk insert with sample data
insert into account (name, branch, number, status) select md5(i::text), i/1000+1, i, 'ACTIVE'::text from generate_series(1,100000) s(i);