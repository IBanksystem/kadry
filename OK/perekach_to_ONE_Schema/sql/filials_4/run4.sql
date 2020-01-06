 DECLARE
 CURSOR c_table_with_long
 IS SELECT * FROM ok_photo_temp;
 BEGIN
 FOR this IN c_table_with_long LOOP
 INSERT INTO ok_photo
 VALUES (this.id, this.branch, this.PERSONAL_CODE,this.PHOTO,this.EMP_CODE,this.INS_DATE);
 COMMIT;
 END LOOP;
 END;
/
 

