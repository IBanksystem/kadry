drop trigger TR_OK_ACADEMIC_SEQ;
drop trigger TR_OK_ACADEMIC_HIST;

CREATE OR REPLACE TRIGGER TR_OK_ACADEMIC_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ACADEMIC
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 seq_new_id NUMBER;
 new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_001 ��.������ - ��� � ����
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_ACADEMIC.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_ACADEMIC',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_AWARD_SEQ;
drop trigger TR_OK_AWARD_HIST;

CREATE OR REPLACE TRIGGER TR_OK_AWARD_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_AWARD
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_005
  if inserting then
    if :NEW.ID is null
    then  
      select SEQ_OK_AWARD.NEXTVAL into seq_new_ID from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.AWARD_INFO <>:OLD.AWARD_INFO -- ��������������� �������
    or :NEW.AWARD_DATE <>:OLD.AWARD_DATE -- ��� ����������� 
    or :NEW.AWARD_DATE_MM <>:OLD.AWARD_DATE_MM -- ����� ����������� 
    or :NEW.AWARD_DATE_DD <>:OLD.AWARD_DATE_DD -- ���� ������ �����������
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_AWARD',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_CHANGE_FIO_seq;
CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_CHANGE_FIO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_001 ��������� ��� ������ ��� ����
  if inserting then
    if :NEW.ID is null
    then
      select seq_OK_CHANGE_FIO.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
  end if;
END;
/

drop trigger TR_OK_CHANGE_FIO_HIST;
/*
CREATE OR REPLACE TRIGGER TR_OK_CHANGE_FIO_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_CHANGE_FIO
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_001 ��������� ��� ������ ��� ����
  if inserting then
    if :NEW.ID is null
    then
      select seq_OK_CHANGE_FIO.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_CHANGE_FIO',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
*/

drop trigger TR_OK_DEGREE_seq;
drop trigger TR_OK_DEGREE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_DEGREE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_DEGREE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_001 ������ ��� ����
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_DEGREE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_DEGREE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_EDUCATION_seq;
drop trigger TR_OK_EDUCATION_HIST;

CREATE OR REPLACE TRIGGER TR_OK_EDUCATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_EDUCATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_004
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_EDUCATION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.INSTITUTION_CODE <>:OLD.INSTITUTION_CODE -- ��� �������� ���������
    or :NEW.COD_VUZ_PRIM <>:OLD.COD_VUZ_PRIM -- ���������� ���  ���� �������� ���������
    or :NEW.BEGIN_DATE <>:OLD.BEGIN_DATE -- ��� ����������� � ������� ��������� 
    or :NEW.BEGIN_DATE_MM <>:OLD.BEGIN_DATE_MM -- ����� ����������� � ������� ��������� 
    or :NEW.BEGIN_DATE_DD <>:OLD.BEGIN_DATE_DD -- ���� ������ ����������� � ������� ���������
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_EDUCATION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_ELECTION_seq;
drop trigger TR_OK_ELECTION_HIST;

CREATE OR REPLACE TRIGGER TR_OK_ELECTION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_ELECTION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_006
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_ELECTION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.ELECTION_CODE <>:OLD.ELECTION_CODE -- ���������� (������������ ������)
    or :NEW.ELECTION_DATE_BEGIN <>:OLD.ELECTION_DATE_BEGIN -- ��� ��������
    or :NEW.ELECTION_DATE_BEGIN_MM <>:OLD.ELECTION_DATE_BEGIN_MM -- ����� ��������
    or :NEW.ELECTION_DATE_BEGIN_DD <>:OLD.ELECTION_DATE_BEGIN_DD -- ���� ������ ��������
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_ELECTION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_LANGUAGE_seq;
drop trigger TR_OK_LANGUAGE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_LANGUAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_LANGUAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_008
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_LANGUAGE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.LANGUAGE_CODE <>:OLD.LANGUAGE_CODE -- ��� ������������ �����, ������� ������� ���������
    or :NEW.LEVEL_CODE <>:OLD.LEVEL_CODE -- ������� �������� ����������� ������ 
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_LANGUAGE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_PARTY_seq;
drop trigger TR_OK_PARTY_HIST;

CREATE OR REPLACE TRIGGER TR_OK_PARTY_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_PARTY
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_001 ������ ��� ����
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_PARTY.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_PARTY',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_RELATION_seq;
drop trigger TR_OK_RELATION_HIST;

CREATE OR REPLACE TRIGGER TR_OK_RELATION_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RELATION
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_002
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_RELATION.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.RELATION_CODE <>:OLD.RELATION_CODE -- ��� ������� �������
    or :NEW.RELATION_BIRTHDAY <>:OLD.RELATION_BIRTHDAY -- ��� ��������
    or :NEW.mm <>:OLD.mm -- ����� ��������
    or :NEW.dd <>:OLD.dd -- ����� ��������
    or :NEW.COD_STR_BIRTH <>:OLD.COD_STR_BIRTH -- ��� ������ ����� ��������
    or :NEW.COD_OBL_BIRTH <>:OLD.COD_OBL_BIRTH -- ��� �������  ����� ��������  
    or :NEW.COD_OBL_BIRTH_PRIM <>:OLD.COD_OBL_BIRTH_PRIM -- ���������� ��� ���� �������
    or :NEW.COD_CITY_BIRTH <>:OLD.COD_CITY_BIRTH -- ��� ������ ��� ������ ����� ��������  
    or :NEW.COD_CITY_BIRTH_PRIM <>:OLD.COD_CITY_BIRTH_PRIM -- ���������� ��� ���� ������ ��� ������
    or :NEW.RELATION_BIRTHPLACE <>:OLD.RELATION_BIRTHPLACE -- ����� �������� ������������
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RELATION',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_RISE_seq;
drop trigger TR_OK_RISE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_RISE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_RISE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
-- 09_009
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_RISE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.RISE_INFO <>:OLD.RISE_INFO -- ��������� ������������
    or :NEW.RISE_DATE_YEAR <>:OLD.RISE_DATE_YEAR -- ��� 
    or :NEW.RISE_DATE_MM <>:OLD.RISE_DATE_MM -- ����� 
    or :NEW.RISE_DATE_DD <>:OLD.RISE_DATE_DD -- ���� ������ 
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_RISE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/

drop trigger TR_OK_VOYAGE_seq;
drop trigger TR_OK_VOYAGE_HIST;

CREATE OR REPLACE TRIGGER TR_OK_VOYAGE_HIST
 BEFORE
 INSERT OR UPDATE OR DELETE
 ON OK_VOYAGE
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
 Version constant char(12) := '#~29022012~#';
 new_id NUMBER;
 seq_new_id NUMBER;
 branch_ ok_personal.branch%type;
 personal_code_ ok_personal.personal_code%type;
id_table_   ok_hist.id_table%type; 
BEGIN
  if inserting then
    if :NEW.ID is null
    then
      select SEQ_OK_VOYAGE.NEXTVAL into seq_new_id from dual;
      :NEW.ID:=seq_new_id;
    end if;
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=1; id_table_   :=:NEW.ID;
  end if;
  if updating then
    branch_:=:NEW.branch;personal_code_:=:NEW.PERSONAL_CODE;new_id:=2; id_table_   :=:NEW.ID;
    if :NEW.VOYAGE_STR <>:OLD.VOYAGE_STR -- ��� ������ ����������
    or :NEW.VOYAGE_INFO <>:OLD.VOYAGE_INFO -- ���� �������
    or :NEW.VOYAGE_DATE <>:OLD.VOYAGE_DATE -- ��� ������ 
    or :NEW.VOYAGE_DATE_MM <>:OLD.VOYAGE_DATE_MM -- ����� ������
    or :NEW.VOYAGE_DATE_DD <>:OLD.VOYAGE_DATE_DD -- ���� ������ ������
    then
      new_id:=3;
    end if;
  end if;
  if deleting then
    branch_:=:OLD.branch;personal_code_:=:OLD.PERSONAL_CODE;new_id:=4; id_table_   :=:OLD.ID;
  end if;
  if ok_service2.is_boss_now(branch_,personal_code_)=1 then
    ok_service2.ok_hist_proc(branch_,personal_code_,'OK_VOYAGE',new_id,null,null,null,null,null,null,id_table_, null);
  end if;
END;
/
