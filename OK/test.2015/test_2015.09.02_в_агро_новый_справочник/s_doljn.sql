prompt PL/SQL Developer import file
prompt Created on 2 Сентябрь 2015 г. by saule
set feedback off
set define off
prompt Creating S_DOLJN...
create table S_DOLJN
(
  NCI_ID     CHAR(2),
  DOLJ_ID    CHAR(3),
  DOLJ_NAME  VARCHAR2(80),
  UROV_ID    CHAR(1),
  DATE_OPEN  DATE,
  DATE_CLOSE DATE,
  ACT        CHAR(1)
)
;

prompt Loading S_DOLJN...
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '209', 'булим бошлиги уринбосари', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '210', 'бош мутахассис', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '211', 'етакчи мутахассис', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '212', '1-тоифали мутахассис', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '213', '2-тоифали мутахассис', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '214', 'мутахассис', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '215', 'стажёр', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '216', 'катта кассир', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '217', 'кассир', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '218', 'кичик хизмат ходими', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '020', '1-тоифали мутахассис (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '021', '2-тоифали мутахассис (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '022', 'мутахассис (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '023', 'стажёр (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '024', 'катта кассир (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '025', 'кассир (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '026', 'кичик хизмат ходими (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '111', 'булим бошлиги уринбосари', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '112', 'бош мутахассис', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '113', 'етакчи мутахассис', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '114', '1-тоифали мутахассис', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '115', '2-тоифали мутахассис', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '116', 'мутахассис', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '117', 'стажёр', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '118', 'катта кассир', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '119', 'кассир', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '120', 'кичик хизмат ходими', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '017', 'булим бошлиги уринбосари (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '018', 'бош мутахассис (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '019', 'етакчи мутахассис (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '001', 'Бошкарув раиси', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '002', 'Бошкарув раисининг биринчи уринбосари', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '003', 'Амалиёт бошкармаси бошлиги', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '004', 'Бошкарув раиси уринбосари', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '005', 'департамент директори', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '006', 'департамент директори уринбосари', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '007', 'бошкарма бошлиги (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '008', 'бошкарма бошлиги уринбосари (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '009', 'Амалиёт бошкармаси бош бухгалтери', '0', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '010', 'бош бухгалтер (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '011', 'бош бухгалтер уринбосари (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '012', 'булим бошлиги (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '013', 'шуъба мудири (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '014', 'мини банк рахбари (республика)', '0', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '015', 'Ички аудит хизмати бош мутахассиси (Республика)', '0', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '016', 'Охирги назорат буйича масъул ходим (Республика)', '0', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '101', 'Худудий филиал (бошкарма) бошлиги', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '102', 'Худудий филиал (бошкарма) бошлиги уринбосари', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '103', 'бош бухгалтер', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '104', 'бош бухгалтер уринбосари', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '105', 'Амалиёт булими бошлиги', '1', to_date('01-08-2006', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '106', 'Амалиёт булими бош бухгалтери', '1', to_date('25-02-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '107', 'булим бошлиги', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '108', 'шуъба мудири', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '109', 'мини банк рахбари', '1', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '110', 'Охирги назорат буйича масъул ходим', '1', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '201', 'бошкарувчи', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '202', 'бошкарувчи уринбосари', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '203', 'бош бухгалтер', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '204', 'бош бухгалтер уринбосари', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '205', 'булим бошлиги', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '206', 'шуъба мудири', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '207', 'мини банк рахбари', '2', to_date('22-08-2015', 'dd-mm-yyyy'), null, 'A');
insert into S_DOLJN (NCI_ID, DOLJ_ID, DOLJ_NAME, UROV_ID, DATE_OPEN, DATE_CLOSE, ACT)
values ('79', '208', 'Охирги назорат буйича масъул ходим', '2', to_date('01-08-2006', 'dd-mm-yyyy'), to_date('22-08-2015', 'dd-mm-yyyy'), 'Z');
prompt 64 records loaded
set feedback on
set define on
prompt Done.
