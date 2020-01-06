spool C:\crTRokhist.sql
set line 2000
set define off
set serveroutput on
set feedback off
set verify off
set pages 0
set lines 2000
set trims on
set longchunksize 20000
set heading off 
declare
 old_tbl varchar2(50);
 ok_hist_table varchar2(50);
 part1 varchar2(2000);
 part2 varchar2(2000);
 partD1 varchar2(2000);
 partD2 varchar2(2000);
  id_ number;
begin
  id_ :=0;
 old_tbl := '*';
    delete from rep_temp
    where ses_id=userenv('sessionid');

for rec in (select * from all_tab_columns
where owner='BANK974'
and table_name in ('OK_ACADEMIC',
'OK_AWARD',
'OK_CHANGE_FIO',
'OK_DEGREE',
'OK_EDUCATION',
'OK_ELECTION',
'OK_LANGUAGE',
'OK_PARTY',
'OK_PERIOD',
'OK_PERSONAL',
'OK_RELATION',
'OK_RISE',
--'OK_STAT',
'OK_VOYAGE'
)
order by table_name,column_id)
loop

  if (old_tbl='*') then old_tbl:=rec.table_name; ok_hist_table:='OK_HIST_'||substr(rec.table_name,4,50); 
    part1:='*';
    part2:='';
    partD1:='';
    partD2:='';
  end if;
  if (old_tbl<>rec.table_name)
  then
    -- ������� � ��������� insert into ok_hist_table (col_name) values (:NEW.col_name)
    -- �������� insert into ok_hist_table (part1) values (part2)
     inc(id_); insert into rep_temp (id,name_1) values (id_,'CREATE OR REPLACE TRIGGER TR_'||old_tbl||'_HIST');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' BEFORE');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' INSERT OR UPDATE OR DELETE');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' ON '||old_tbl);
     inc(id_); insert into rep_temp (id,name_1) values (id_,' REFERENCING OLD AS OLD NEW AS NEW');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' FOR EACH ROW');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'declare');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'new_id NUMBER;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'BEGIN');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if inserting then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||part1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||part2||',info.getday,sysdate,1);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if updating then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||part1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||part2||',info.getday,sysdate,2);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if deleting then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||partD1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||partD2||',info.getday,sysdate,3);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'END;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'/');
    part1:='*';
    part2:='';
    partD1:='';
    partD2:='';
    old_tbl:=rec.table_name; ok_hist_table:='OK_HIST_'||substr(rec.table_name,4,50); 
  else 
    if part1='*'
    then
      part1:=rec.column_name;
      part2:=':NEW.'||rec.column_name;
      partD1:=rec.column_name;
      partD2:=':OLD.'||rec.column_name;
    else
      part1:=part1||','||rec.column_name;
      part2:=part2||',:NEW.'||rec.column_name;
      partD1:=partD1||','||rec.column_name;
      partD2:=partD2||',:OLD.'||rec.column_name;
    end if;
  end if;
  
end loop;
-- ��������� �������
     inc(id_); insert into rep_temp (id,name_1) values (id_,'CREATE OR REPLACE TRIGGER TR_'||old_tbl||'_HIST');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' BEFORE');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' INSERT OR UPDATE OR DELETE');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' ON '||old_tbl);
     inc(id_); insert into rep_temp (id,name_1) values (id_,' REFERENCING OLD AS OLD NEW AS NEW');
     inc(id_); insert into rep_temp (id,name_1) values (id_,' FOR EACH ROW');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'declare');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'new_id NUMBER;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'BEGIN');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if inserting then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||part1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||part2||',info.getday,sysdate,1);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if updating then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||part1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||part2||',info.getday,sysdate,2);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  if deleting then ');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'    insert into '||ok_hist_table||' ('||partD1||', IIAS_VDATE, IIAS_SYSDATE, IIAS_CODE)');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'      values ('||partD2||',info.getday,sysdate,3);');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'  end if;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'END;');
     inc(id_); insert into rep_temp (id,name_1) values (id_,'/');

end;
/

    select name_1 from rep_temp
    where ses_id=userenv('sessionid')
    order by id;

    delete from rep_temp
    where ses_id=userenv('sessionid');
    commit;

spool off;
