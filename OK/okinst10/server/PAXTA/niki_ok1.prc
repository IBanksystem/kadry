create or replace procedure niki_edb1 is
  dest_table_name varchar2(50);
  sour_table_name varchar2(75);
  cccc number;
begin
  delete from bank9004.bal_niki_for_go;
  commit;
  dest_table_name:='bal_niki_for_go';
  for rec in (Select User_Name,
             Db_Alias, branch
       from  bank9004.SS_DBLink_Branch WHERE BRANCH<>'09004')
  loop
        sour_table_name:=rec.User_Name||'.'||dest_table_name;
    execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name;
    commit;
  end loop;
 end;
/
