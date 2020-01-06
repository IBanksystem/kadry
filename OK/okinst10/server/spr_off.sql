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
(1,'Уз хохишига кура');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(2,'Тарафлар келишувига кура');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(3,'Мехнат шартномаси муддати тугаши мунособати билан');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(4,'Ходимнинг вафоти мунособати билан');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(5,'Мехнат вазифасини бир марта купол равишда бузганлиги учун');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(6,'Нафаката чикиши мунособати билан');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(7,'Суд хукмининг конуний кучга кирганлиги мунособати билан');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(8,'Мезнат вазифасини мунтазам бузганлиги учун');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(9,'Лавозимига малакаси етарли булмаганлиги сабабли');
INSERT INTO ss_spr_off
(ID,NAME)
VALUES
(10,'Бошка');

commit;

CREATE TABLE ss_sgrd(
  id   number,
  name varchar2(60)
);

ALTER TABLE ss_sgrd  ADD CONSTRAINT ss_sgrd_PK
  PRIMARY KEY ( id );

delete from ss_sgrd ;

INSERT INTO ss_sgrd (id, name)
VALUES (1, 'ГРАЖДАНИН УЗБЕКИСТАНА');
INSERT INTO ss_sgrd (id, name)
VALUES (2, 'ГРАЖДАНИН ДРУГОГО ГОСУДАРСТВА');
INSERT INTO ss_sgrd (id, name)
VALUES (3, 'ЛИЦО БЕЗ ГРАЖДАНСТВА');
COMMIT;


CREATE TABLE ss_syesno(
  id   number,
  name varchar2(5)
);

ALTER TABLE ss_syesno  ADD CONSTRAINT ss_syesno_PK
  PRIMARY KEY ( id );

delete from ss_syesno; 
INSERT INTO ss_syesno (id, name)
VALUES (1, 'Да');
INSERT INTO ss_syesno (id, name)
VALUES (2, 'Нет');
COMMIT;


CREATE TABLE ss_sbankspec(
  id   number,
  name varchar2(25)
);
ALTER TABLE ss_sbankspec ADD CONSTRAINT ss_sbankspec_PK
  PRIMARY KEY ( id );

delete from ss_sbankspec;
INSERT INTO ss_sbankspec (id, name)
VALUES (1, 'ИМЕЕТ');
INSERT INTO ss_sbankspec (id, name)
VALUES (2, 'НЕ ИМЕЕТ');
COMMIT;
