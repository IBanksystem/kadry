CREATE OR REPLACE PROCEDURE OK9004 is
 old_table_name_ all_tab_columns.table_name%type;
 sql_ varchar2(2000);
 columns_ varchar2(2000);
 i number;
begin  
  i:=0;
      inc(i);    
      sql_:='CREATE OR REPLACE PROCEDURE OK_KACH9004 is';
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
      inc(i);    
      sql_:='begin';
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
  old_table_name_:='OLD';
  columns_:=' ';
  delete from Rep_Temp where ses_id=userenv('sessionid');
  For Rec In (select table_name,COLUMN_NAME,COLUMN_ID from all_tab_columns
      where owner='BANK394' and table_name like 'OK%'
      and table_name<>'OK_PHOTO'
      and table_name<>'OK_SEND_ALL'
      and table_name<>'OK_SEND_ALL_IIAS'
      order by table_name,column_id)
  Loop
    if (old_table_name_ <> rec.table_name) and (old_table_name_<>'OLD')
    then
      -- ��������� ������
      sql_:='truncate table bank9004.'||old_table_name_||';';
      inc(i);    
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
      for rec_db in(select * from ss_dblink_branch where branch<>'09004' order by branch)
      loop
        sql_:='insert into bank9004.'||old_table_name_||'('||columns_||') '||
          ' select '||columns_||' from '||rec_db.user_name||'.'||old_table_name_||
          ' where branch='''||rec_db.branch||''';';
      inc(i);    
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
      end loop;
      columns_:=rec.COLUMN_NAME;
    else
      if columns_ =' '
      then
        columns_:=rec.COLUMN_NAME;
      else
        columns_:=columns_||','||rec.COLUMN_NAME;
      end if;  
    end if;
    old_table_name_ :=   rec.table_name;
  End Loop;
--  
      sql_:='truncate table bank9004.'||old_table_name_||';';
      inc(i);    
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
--
      for rec_db in(select * from ss_dblink_branch where branch<>'09004' order by branch)
      loop
        sql_:='insert into bank9004.'||old_table_name_||'('||columns_||') '||
          ' select '||columns_||' from '||rec_db.user_name||'.'||old_table_name_||
          ' where branch='''||rec_db.branch||''';';
      inc(i);    
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
      end loop;
      inc(i);    
      sql_:='end;';
      Insert Into Rep_Temp(id, Name_1)
      Values (i,sql_);
--  
end;
/
