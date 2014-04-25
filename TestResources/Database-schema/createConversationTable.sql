drop table if exists   CONVERSATION; 
drop SEQUENCE if exists CONVERSATION_SEQ;

CREATE SEQUENCE  CONVERSATION_SEQ START WITH 1  MAXVALUE   99999  NOCACHE  NOCYCLE;

create table CONVERSATION (Conversation_ID  bigint default conversation_seq.nextval primary key, ADI_Package VARCHAR (100));

insert into CONVERSATION ( ADI_Package ) values ('SKY-TEST1000000000001011'); 
insert into CONVERSATION ( ADI_Package ) values ('SKY-TITL2000000000001011'); 