drop table if exists platform; 
drop table if exists asset_type; 
drop table if exists platform_asset_type; 
drop table if exists in_house; 
drop table if exists in_house_asset_type; 
drop table if exists platform_pricing; 
drop table if exists pricing_code; 

create table platform (platform_id NUMBER(9) not null, platform_key varchar2(60));
create table asset_type (asset_type_id NUMBER(9) not null, asset_type_desc varchar2(60), media_type varchar2(60));
create table platform_asset_type (platform_id  NUMBER(9), asset_type_id  NUMBER(9));
create table in_house (in_house_id  NUMBER(9), platform_id  NUMBER(9), in_house_event_key varchar2(60));
create table in_house_asset_type (in_house_id  NUMBER(9), asset_type_id number(9), file_location varchar2(255));
create table platform_pricing (platform_id number(9), pricing_code varchar2(20), price number(8,2));
create table pricing_code (pricing_code varchar2(2), description varchar2(255));

insert into platform (platform_id, platform_Key) values (1, 'Fusion');
insert into platform (platform_id, platform_Key) values (2, 'SKY GO');


insert into asset_type (asset_type_id, asset_type_desc, media_type)  values (1, 'SmallPortrait', 'Image');
insert into asset_type (asset_type_id, asset_type_desc, media_type)  values (2, 'MediumPortrait', 'Image');
insert into asset_type (asset_type_id, asset_type_desc, media_type)  values (3, 'VBR', 'Video');
insert into asset_type (asset_type_id, asset_type_desc, media_type)  values (4, '1200', 'Video');

insert into platform_asset_type (platform_id, asset_type_id) values (1,1);
insert into platform_asset_type (platform_id, asset_type_id) values (1,3);
insert into platform_asset_type (platform_id, asset_type_id) values (2,2);
insert into platform_asset_type (platform_id, asset_type_id) values (2,4);


insert into in_house (in_house_id, platform_id, in_house_event_key) values (1, 1, 'RUGBY_SUPER15');
insert into in_house (in_house_id, platform_id, in_house_event_key) values (2, 1, 'SOCCER_EPL');
insert into in_house (in_house_id, platform_id, in_house_event_key) values (3, 2, 'RUGBY_SUPER15');
insert into in_house (in_house_id, platform_id, in_house_event_key) values (4, 2, 'SOCCER_EPL');


insert into in_house_asset_type (in_house_id, asset_type_id, file_location) values (4, 2, '/skygo/soccer_epl_mp.jpg');
insert into in_house_asset_type (in_house_id, asset_type_id, file_location) values (3, 2, '/skygo/rugby_super15_mp.jpg');
insert into in_house_asset_type (in_house_id, asset_type_id, file_location) values (2, 1, '/fusion/soccer_epl_sp.jpg');
insert into in_house_asset_type (in_house_id, asset_type_id, file_location) values (1, 1, '/fusion/rugby_super15_sp.jpg');

insert into pricing_code (pricing_code, description) values ('A', 'Library');
insert into pricing_code (pricing_code, description) values ('B', 'Premier');

insert into platform_pricing (platform_id, pricing_code, price) values (1, 'A', 2.99);
insert into platform_pricing (platform_id, pricing_code, price) values (1, 'B', 9.99);
insert into platform_pricing (platform_id, pricing_code, price) values (2, 'A', 1.99);
insert into platform_pricing (platform_id, pricing_code, price) values (2, 'B', 8.99);
