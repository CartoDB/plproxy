
\set ECHO none

\i plproxy.sql

-- create cluster info functions
create schema plproxy;
create or replace function plproxy.get_cluster_version(cluster_name text)
returns integer as $$
begin
    if cluster_name = 'testcluster' then
        return 5;
    end if;
    raise exception 'no such cluster: %', cluster_name;
end; $$ language plpgsql;

create or replace function
plproxy.get_cluster_partitions(cluster_name text)
returns setof text as $$
begin
    if cluster_name = 'testcluster' then
        return next 'host=127.0.0.1 dbname=test_part';
        return;
    end if;
    raise exception 'no such cluster: %', cluster_name;
end; $$ language plpgsql;

create or replace function
plproxy.get_cluster_config(cluster_name text, out key text, out val text)
returns setof record as $$
begin
    key := 'statement_timeout';
    val := 60;
    return next;
    return;
end; $$ language plpgsql;

-------------------------------------------------
-- intialize part
-------------------------------------------------
drop database if exists test_part;
create database test_part;
\c test_part
create language plpgsql;

drop database if exists test_part0;
create database test_part0;
\c test_part0
create language plpgsql;

drop database if exists test_part1;
create database test_part1;
\c test_part1
create language plpgsql;

drop database if exists test_part2;
create database test_part2;
\c test_part2
create language plpgsql;

drop database if exists test_part3;
create database test_part3;
\c test_part3
create language plpgsql;

