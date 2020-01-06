alter table OK_PERSONAL modify NPS_ID null;

alter table OK_PERSONAL add nps_id_temp varchar2(14);

update OK_PERSONAL set  nps_id_temp=to_char(nps_id);

update OK_PERSONAL set  nps_id =null;

alter table OK_PERSONAL modify NPS_ID varchar2(14);

update OK_PERSONAL set  nps_id =nps_id_temp;
commit;

alter table OK_PERSONAL drop column nps_id_temp;

alter package ok_service compile body;
