drop table if exists  MEDIA_METADATA_VIEW; 

CREATE TABLE MEDIA_METADATA_VIEW
(
TITLE_ID NUMBER(9),
Title_Episode_Name VARCHAR2(500 CHAR),
MSORating VARCHAR2(6 CHAR),
Duration VARCHAR(10),
Human_Readable_Aspect_Ratio VARCHAR2(30 CHAR),
Audio VARCHAR2(30 CHAR),
Screen_Format  VARCHAR2(30 CHAR));


Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (5885,'Desperate Measures','M','01:36:47','AR is 16:9','Stereo','AR is 16:9');

Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (6770,'Silverado','PG','02:07:15','AR is 16:9','Stereo','AR is 16:9');
Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (5899,'Seven Years In Tibet','M','02:10:14','AR is 16:9','Stereo','AR is 16:9');
Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (6127,'How To Be A Player','16','01:30:01','AR is 16:9','Stereo','AR is 16:9');
Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (5864,'Brassed Off!','M','01:43:23','AR is 16:9','Stereo','AR is 16:9');

Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (10109545,'Otago V Hawkes Bay Replay','M','01:43:23','AR is 16:9','Stereo','AR is 16:9');

Insert into MEDIA_METADATA_VIEW (TITLE_ID,TITLE_EPISODE_NAME,MSORATING,DURATION,HUMAN_READABLE_ASPECT_RATIO,AUDIO,SCREEN_FORMAT) values (10155006,'Hawkes Bay Replay','M','01:43:23','AR is 16:9','Stereo','AR is 16:9');

