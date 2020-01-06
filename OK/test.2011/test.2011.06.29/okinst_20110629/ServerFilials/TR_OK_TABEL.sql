CREATE OR REPLACE TRIGGER TR_OK_TABEL
 BEFORE
 UPDATE
 ON OK_TABEL
 REFERENCING OLD AS OLD NEW AS NEW
 FOR EACH ROW
declare
new_id NUMBER;
BEGIN
if (:OLD.day01='.' and :NEW.day01<>'.' and :NEW.day01<>'$') then :NEW.day01:='.'; end if;
if (:OLD.day02='.' and :NEW.day02<>'.' and :NEW.day02<>'$') then :NEW.day02:='.'; end if;
if (:OLD.day03='.' and :NEW.day03<>'.' and :NEW.day03<>'$') then :NEW.day03:='.'; end if;
if (:OLD.day04='.' and :NEW.day04<>'.' and :NEW.day04<>'$') then :NEW.day04:='.'; end if;
if (:OLD.day05='.' and :NEW.day05<>'.' and :NEW.day05<>'$') then :NEW.day05:='.'; end if;
if (:OLD.day06='.' and :NEW.day06<>'.' and :NEW.day06<>'$') then :NEW.day06:='.'; end if;
if (:OLD.day07='.' and :NEW.day07<>'.' and :NEW.day07<>'$') then :NEW.day07:='.'; end if;
if (:OLD.day08='.' and :NEW.day08<>'.' and :NEW.day08<>'$') then :NEW.day08:='.'; end if;
if (:OLD.day09='.' and :NEW.day09<>'.' and :NEW.day09<>'$') then :NEW.day09:='.'; end if;
if (:OLD.day10='.' and :NEW.day10<>'.' and :NEW.day10<>'$') then :NEW.day10:='.'; end if;
if (:OLD.day11='.' and :NEW.day11<>'.' and :NEW.day11<>'$') then :NEW.day11:='.'; end if;
if (:OLD.day12='.' and :NEW.day12<>'.' and :NEW.day12<>'$') then :NEW.day12:='.'; end if;
if (:OLD.day13='.' and :NEW.day13<>'.' and :NEW.day13<>'$') then :NEW.day13:='.'; end if;
if (:OLD.day14='.' and :NEW.day14<>'.' and :NEW.day14<>'$') then :NEW.day14:='.'; end if;
if (:OLD.day15='.' and :NEW.day15<>'.' and :NEW.day15<>'$') then :NEW.day15:='.'; end if;
if (:OLD.day16='.' and :NEW.day16<>'.' and :NEW.day16<>'$') then :NEW.day16:='.'; end if;
if (:OLD.day17='.' and :NEW.day17<>'.' and :NEW.day17<>'$') then :NEW.day17:='.'; end if;
if (:OLD.day18='.' and :NEW.day18<>'.' and :NEW.day18<>'$') then :NEW.day18:='.'; end if;
if (:OLD.day19='.' and :NEW.day19<>'.' and :NEW.day19<>'$') then :NEW.day19:='.'; end if;
if (:OLD.day20='.' and :NEW.day20<>'.' and :NEW.day20<>'$') then :NEW.day20:='.'; end if;
if (:OLD.day21='.' and :NEW.day21<>'.' and :NEW.day21<>'$') then :NEW.day21:='.'; end if;
if (:OLD.day22='.' and :NEW.day22<>'.' and :NEW.day22<>'$') then :NEW.day22:='.'; end if;
if (:OLD.day23='.' and :NEW.day23<>'.' and :NEW.day23<>'$') then :NEW.day23:='.'; end if;
if (:OLD.day24='.' and :NEW.day24<>'.' and :NEW.day24<>'$') then :NEW.day24:='.'; end if;
if (:OLD.day25='.' and :NEW.day25<>'.' and :NEW.day25<>'$') then :NEW.day25:='.'; end if;
if (:OLD.day26='.' and :NEW.day26<>'.' and :NEW.day26<>'$') then :NEW.day26:='.'; end if;
if (:OLD.day27='.' and :NEW.day27<>'.' and :NEW.day27<>'$') then :NEW.day27:='.'; end if;
if (:OLD.day28='.' and :NEW.day28<>'.' and :NEW.day28<>'$') then :NEW.day28:='.'; end if;
if (:OLD.day29='.' and :NEW.day29<>'.' and :NEW.day29<>'$') then :NEW.day29:='.'; end if;
if (:OLD.day30='.' and :NEW.day30<>'.' and :NEW.day30<>'$') then :NEW.day30:='.'; end if;
if (:OLD.day31='.' and :NEW.day31<>'.' and :NEW.day31<>'$') then :NEW.day31:='.'; end if;
END;
/
