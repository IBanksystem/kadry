--Справочник- виды файлов из дополнительной информации
-- drop table ss_ok_addinform;
create table ss_ok_addinform(
addinform_code NUMBER(9) not null, 
addinform_name varchar2(100) not null
);

ALTER TABLE ss_ok_addinform ADD CONSTRAINT ss_ok_addinform_PK
  PRIMARY KEY ( addinform_code );

delete from ss_ok_addinform;
insert into ss_ok_addinform values (1,'1-Фото (сканированный файл)');
insert into ss_ok_addinform values (2,'2-диплом (сканированный файл)');
insert into ss_ok_addinform values (3,'3-справка о судимости (УВД) (сканированный файл)');
insert into ss_ok_addinform values (4,'4-Справка с махаллинского комитета при первом поступлении на работу (сканированный файл)');
insert into ss_ok_addinform values (5,'5-справка о НЕсудимости (РОВД) (сканированный файл)');
commit;

create or replace public synonym ss_ok_addinform for ss_ok_addinform;