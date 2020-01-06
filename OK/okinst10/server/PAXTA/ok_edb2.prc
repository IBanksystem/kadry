create or replace procedure ok_edb2 is
  dest_table_name varchar2(50);
  sour_table_name varchar2(75);
--  cccc number;
begin
  ������� ����� MERGE
-- ���������� ������ � �������� � 09004 �� ������ ������ � 12 ����� ����
-- ��������
      dest_table_name:='OK_ACADEMIC';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_ADDINFORM';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_ARMY';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_ATTESTATION';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_AWARD';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_CHANGE_FIO';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_CONVICTIONS';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_DEGREE';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_EDUCATION';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_ELECTION';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_LANGUAGE';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_LEAVE';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_PARTY';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_PENALTY';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_PERIOD';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_PERSONAL';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_POST';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_PREMIUM';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_RELATION';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_REZERV';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_REZERV_DETAIL';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_RISE';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_SCIENTIFIC';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_STAT';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_STAT_SALARY';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_VOYAGE';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
      dest_table_name:='OK_YOUTH';
    execute immediate 'delete from bank9004.'||dest_table_name;
    commit;
--
-- �������  
    for rec in (Select User_Name,
             Db_Alias, branch
       from  bank9004.SS_DBLink_Branch WHERE BRANCH<>'09004' and branch<>'00974')
    loop
      dest_table_name:='OK_ACADEMIC';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_ADDINFORM';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_ARMY';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_ATTESTATION';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_AWARD';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_CHANGE_FIO';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_CONVICTIONS';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_DEGREE';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_EDUCATION';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_ELECTION';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_LANGUAGE';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_LEAVE';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_PARTY';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_PENALTY';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_PERIOD';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_PERSONAL';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_POST';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_PREMIUM';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_RELATION';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_REZERV';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_REZERV_DETAIL';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_RISE';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_SCIENTIFIC';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_STAT';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_STAT_SALARY';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_VOYAGE';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
      dest_table_name:='OK_YOUTH';
      sour_table_name:=rec.User_Name||'.'||dest_table_name;
      execute immediate 'insert into bank9004.'||dest_table_name||' select * from '||sour_table_name||' where branch='''||rec.branch||'''';
      commit;
    end loop;
--
end;
/
