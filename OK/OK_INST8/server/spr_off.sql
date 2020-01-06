CREATE TABLE ss_spr_off(
    id  NUMBER,
    name VARCHAR2(100)
);

ALTER TABLE ss_spr_off ADD CONSTRAINT ss_spr_off_PK
  PRIMARY KEY ( id );

delete from ss_spr_off;
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(1,'�� �������� ����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(2,'�������� ���������� ����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(3,'������ ���������� ������� ������ ���������� �����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(4,'��������� ������ ���������� �����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(5,'������ ���������� ��� ����� ����� ������� ���������� ����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(6,'�������� ������ ���������� �����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(7,'��� ��������� ������� ����� ���������� ���������� �����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(8,'������ ���������� �������� ���������� ����');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(9,'���������� �������� ������ ������������ �������');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(10,'�����');

commit;

CREATE TABLE ss_sgrd(
  id   number,
  name varchar2(60)
);

ALTER TABLE ss_sgrd  ADD CONSTRAINT ss_sgrd_PK
  PRIMARY KEY ( id );

delete from ss_sgrd ;

INSERT INTO ss_sgrd (id, name)
VALUES (1, '��������� �����������');
INSERT INTO ss_sgrd (id, name)
VALUES (2, '��������� ������� �����������');
INSERT INTO ss_sgrd (id, name)
VALUES (3, '���� ��� �����������');
COMMIT;


CREATE TABLE ss_syesno(
  id   number,
  name varchar2(5)
);

ALTER TABLE ss_syesno  ADD CONSTRAINT ss_syesno_PK
  PRIMARY KEY ( id );

delete from ss_syesno; 
INSERT INTO ss_syesno (id, name)
VALUES (1, '��');
INSERT INTO ss_syesno (id, name)
VALUES (2, '���');
COMMIT;


CREATE TABLE ss_sbankspec(
  id   number,
  name varchar2(25)
);
ALTER TABLE ss_sbankspec ADD CONSTRAINT ss_sbankspec_PK
  PRIMARY KEY ( id );

delete from ss_sbankspec;
INSERT INTO ss_sbankspec (id, name)
VALUES (1, '�����');
INSERT INTO ss_sbankspec (id, name)
VALUES (2, '�� �����');
COMMIT;
