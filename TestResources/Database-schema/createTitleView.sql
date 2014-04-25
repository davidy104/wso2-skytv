
drop table if exists TITLE_VIEW; 

CREATE TABLE TITLE_VIEW

(             

title_id            NUMBER(9) not null ,

programme_name      VARCHAR2(500 CHAR) not null ,

episode_no          NUMBER(5) not null ,

year_of_production  NUMBER(4) not null ,

deal_type_desc      VARCHAR2(30 CHAR) not null ,

company_name        VARCHAR2(30 CHAR) not null ,

company_id          NUMBER(9) not null ,

marked_as_deleted   NUMBER(1) not null ,

series_id           NUMBER(9),

series_name         VARCHAR2(50 CHAR),

series_year         VARCHAR2(7 CHAR),

synopsis            VARCHAR2(4000 CHAR) not null,
LAST_UPDATE_DATE    VARCHAR2(30 CHAR)

);


Insert into TITLE_VIEW (TITLE_ID,PROGRAMME_NAME,SYNOPSIS,SERIES_ID,SERIES_NAME,SERIES_YEAR,EPISODE_NO,YEAR_OF_PRODUCTION,DEAL_TYPE_DESC,COMPANY_NAME,COMPANY_ID,MARKED_AS_DELETED,LAST_UPDATE_DATE) values (5899,'Seven Years In Tibet','Drama: Austrian mountaineer, Heinrich Harrer, escapes from his World War II POW camp & ends up in Tibet, where he befriends the young Dalai Lama. Brad Pitt.',null,null,null,0,1997,'Movie','Columbia Tristar Intl TV',4,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID,PROGRAMME_NAME,SYNOPSIS,SERIES_ID,SERIES_NAME,SERIES_YEAR,EPISODE_NO,YEAR_OF_PRODUCTION,DEAL_TYPE_DESC,COMPANY_NAME,COMPANY_ID,MARKED_AS_DELETED,LAST_UPDATE_DATE) values (6770,'Silverado','Western: Classic style adventure about four friends, who team up to fight injustice in a small town. Starring:  Kevin Kline, Kevin Costner, Danny Glover, Scott Glenn.',null,null,null,0,1985,'Movie','Columbia Tristar Intl TV',4,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID,PROGRAMME_NAME,SYNOPSIS,SERIES_ID,SERIES_NAME,SERIES_YEAR,EPISODE_NO,YEAR_OF_PRODUCTION,DEAL_TYPE_DESC,COMPANY_NAME,COMPANY_ID,MARKED_AS_DELETED,LAST_UPDATE_DATE) values (5864,'Brassed Off!','Comedy: A small Yorkshire coal mining community relies on a brass band to lift its spirits when the town''s pit is threatened with closure. Starring Pete Postlethwaite, Ewan McGregor.',null,null,null,0,1996,'Movie','Icon Film Distribution',8133,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID,PROGRAMME_NAME,SYNOPSIS,SERIES_ID,SERIES_NAME,SERIES_YEAR,EPISODE_NO,YEAR_OF_PRODUCTION,DEAL_TYPE_DESC,COMPANY_NAME,COMPANY_ID,MARKED_AS_DELETED,LAST_UPDATE_DATE) values (5885,'Desperate Measures','Thriller: A respected cop is forced to sacrifice his professional integrity to help his dying son, because the only donor is a convicted murderer. Starring:  Michael Keaton, Andy Garcia, Brian Cox.',null,null,null,0,1998,'Movie','Columbia Tristar Intl TV',4,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID,PROGRAMME_NAME,SYNOPSIS,SERIES_ID,SERIES_NAME,SERIES_YEAR,EPISODE_NO,YEAR_OF_PRODUCTION,DEAL_TYPE_DESC,COMPANY_NAME,COMPANY_ID,MARKED_AS_DELETED,LAST_UPDATE_DATE) values (6127,'How To Be A Player','Comedy: A serial philanderer gets a fright when his sister invites all his unknowing girlfriends to a party. Bill Bellamy, Natalie Desselle.',null,null,null,0,1997,'Movie','Universal Studios Intl BV TV',3,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID ,PROGRAMME_NAME, SYNOPSIS,SERIES_ID ,SERIES_NAME, SERIES_YEAR, EPISODE_NO, YEAR_OF_PRODUCTION, DEAL_TYPE_DESC,COMPANY_NAME , COMPANY_ID , MARKED_AS_DELETED, LAST_UPDATE_DATE ) values (10155006,'Roosters U20 V Knights U20 Replay','Join SKY Sport for a full replay of this Toyota Cup match between the Roosters U20 and the Knights U20 from Sydney Football Stadium.',115237,'Toyota Cup','2009',19,0,'Series','Sky Network Television Limited',55,0,'20140318');
Insert into TITLE_VIEW (TITLE_ID ,PROGRAMME_NAME, SYNOPSIS,SERIES_ID ,SERIES_NAME, SERIES_YEAR, EPISODE_NO, YEAR_OF_PRODUCTION, DEAL_TYPE_DESC,COMPANY_NAME , COMPANY_ID , MARKED_AS_DELETED, LAST_UPDATE_DATE ) values (10109545,'Otago V Hawkes Bay Replay','Join SKY Sport to catch this full replay of Otago battling it out with Hawkes Bay at Carisbrook in Dunedin for the 2008 Air New Zealand Cup competition.',112076,'2008 Air New Zealand Cup','08',31,0,'Series','Sky Inhouse Sports Productions',4788,0,'20140318');
