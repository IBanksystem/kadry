CREATE TABLE ss_spr_off(
    id  NUMBER,
    name VARCHAR2(100)
);

ALTER TABLE ss_spr_off ADD CONSTRAINT ss_spr_off_PK
  PRIMARY KEY ( id );


CREATE TABLE ss_sgrd(
  id   number,
  name varchar2(60)
);

ALTER TABLE ss_sgrd  ADD CONSTRAINT ss_sgrd_PK
  PRIMARY KEY ( id );



CREATE TABLE ss_syesno(
  id   number,
  name varchar2(5)
);

ALTER TABLE ss_syesno  ADD CONSTRAINT ss_syesno_PK
  PRIMARY KEY ( id );


CREATE TABLE ss_sbankspec(
  id   number,
  name varchar2(25)
);
ALTER TABLE ss_sbankspec ADD CONSTRAINT ss_sbankspec_PK
  PRIMARY KEY ( id );

