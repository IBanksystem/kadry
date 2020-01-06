How can I re-organize a table that contains a LONG datatype 
and also how can I analyze all my Oracle tables and indexes?

 

How can I analyze all my Oracle tables and indexes?
Use GATHER_SCHEMA_STATS procedure in the DBMS_STATS package to analyze
all tables and indexes in a specific schema.
EXECUTE dbms_stats.gather_schema_stats('your_schema_name',cascade=>true);

 

How can I re-organize a table that contains a LONG datatype?

Normally, to re-organize a table, you should use ALTER command with MOVE
option.

But if your table contains a LONG datatype you get the following error
message: ORA-00997: illegal use of LONG datatype

For example:
SQL> alter table table_with_long move;
alter table table_with_long move
*

ERROR at line 1:
ORA-00997: illegal use of LONG datatype

To re-organize a table with a LONG datatype do the following steps:

STEP #1:

SQL> ed

Wrote file afiedt.buf

 CREATE TABLE table_with_long

 (c1 VARCHAR2(100) PRIMARY KEY,

 c2 number(5),

 c3 LONG)


Table created.

SQL> -- Write a PL/SQL procedure to insert 100 records.

SQL> ed

Wrote file afiedt.buf

 BEGIN

 FOR this IN 1..100 LOOP

 INSERT INTO table_with_long

 VALUES

('PK_' || this, this, 'This is a very long long long data...');

 -- save transaction

 COMMIT;

 END LOOP;

 END;

SQL> /

PL/SQL procedure successfully completed.

SQL> -- Query table...

SQL> COL c1 FORMAT a10

SQL> COL c3 FORMAT a50

SQL> SET PAGESIZE 1000

SQL> SELECT * FROM table_with_long;

C1 C2 C3

---------- ---------- --------------------------------------------------

PK_1 1 This is a very long long long data...

PK_2 2 This is a very long long long data...

PK_3 3 This is a very long long long data...

PK_4 4 This is a very long long long data...

PK_5 5 This is a very long long long data...

PK_6 6 This is a very long long long data...

PK_7 7 This is a very long long long data...

PK_8 8 This is a very long long long data...

PK_9 9 This is a very long long long data...

PK_10 10 This is a very long long long data...

PK_11 11 This is a very long long long data...

PK_12 12 This is a very long long long data...

PK_13 13 This is a very long long long data...

PK_14 14 This is a very long long long data...

PK_15 15 This is a very long long long data...

PK_16 16 This is a very long long long data...

PK_17 17 This is a very long long long data...

PK_18 18 This is a very long long long data...

PK_19 19 This is a very long long long data...

PK_20 20 This is a very long long long data...

...

...

...

100 rows selected.

SQL> -- Assuming that there are lots of fragmentation and you need

SQL> -- to re-organize the table ("table_with_long").

SQL>

SQL> -- Create a table with the same columns name and datatypes...

SQL> DESC table_with_long

Name Null? Type

----------------------------------------- -------- ----------------------------

C1 NOT NULL VARCHAR2(100)

C2 NUMBER(5)

C3 LONG

SQL> CREATE TABLE table_with_long$$recovery

2 (c1 VARCHAR2(100) PRIMARY KEY,

3 c2 NUMBER(5),

4 c3 LONG);

Table created.

SQL> -- Write a PL/SQL procedure to copy all data from

SQL> -- table_with_long to table_with_long$$recovery.

SQL>

SQL> -- Notice that you can not use insert DML statement

SQL> -- to move data.

SQL> -- You will get the following error message:

ORA-00997: illegal use of LONG datatype

SQL> INSERT INTO table_with_long$$recovery

2 SELECT * FROM table_with_long;

SELECT * FROM table_with_long

*

ERROR at line 2:

ORA-00997: illegal use of LONG datatype

SQL> -- This procedure will perform the copy process.

SQL>

SQL>
 DECLARE

 CURSOR c_table_with_long

 IS SELECT * FROM table_with_long;



 BEGIN

 FOR this IN c_table_with_long LOOP

 INSERT INTO table_with_long$$recovery

 VALUES (this.c1, this.c2, this.c3);

 COMMIT;

 END LOOP;

 END;

 /

PL/SQL procedure successfully completed.

SQL> -- Query table_with_long$$recovery to see the data.

SQL> SELECT * FROM table_with_long$$recovery;

C1 C2 C3

---------- ---------- --------------------------------------------------

PK_1 1 This is a very long long long data...

PK_2 2 This is a very long long long data...

PK_3 3 This is a very long long long data...

PK_4 4 This is a very long long long data...

PK_5 5 This is a very long long long data...

PK_6 6 This is a very long long long data...

PK_7 7 This is a very long long long data...

PK_8 8 This is a very long long long data...

PK_9 9 This is a very long long long data...

...

...

...

100 rows selected.

SQL> -- Truncate table_with_long;

SQL>

SQL> TRUNCATE TABLE table_with_long;

Table truncated.

SQL> -- Check to make sure there are no data in that table.

SQL> SELECT * FROM table_with_long;

no rows selected

SQL> -- Now, write a PL/SQL procedure to copy all data from

SQL> -- table_with_long$$recovery to the truncated table.

SQL>

SQL> ed

Wrote file afiedt.buf

1 DECLARE

2 CURSOR c_table_with_long$$recovery

3 IS SELECT * FROM table_with_long$$recovery;

4 BEGIN

5 FOR this IN c_table_with_long$$recovery LOOP

6 INSERT INTO table_with_long

7 VALUES (this.c1, this.c2, this.c3);

8 COMMIT;

9 END LOOP;

10* END;

11 /

PL/SQL procedure successfully completed.

SQL> -- Now, check to see the data is back to its table.

SQL> SELECT * FROM table_with_long;

C1 C2 C3

---------- ---------- --------------------------------------------------

PK_1 1 This is a very long long long data...

PK_2 2 This is a very long long long data...

PK_3 3 This is a very long long long data...

PK_4 4 This is a very long long long data...

PK_5 5 This is a very long long long data...

PK_6 6 This is a very long long long data...

PK_7 7 This is a very long long long data...

PK_8 8 This is a very long long long data...

PK_9 9 This is a very long long long data...

...

...

...

100 rows selected.

SQL> -- This is one way to re-organize table with a long datatype.


select this.id, this.branch, this.PERSONAL_CODE, this.EMP_CODE,this.INS_DATE from ok_photo this
order by personal_code
delete from ok_photo

grant all on OK_photo to public;
____________________________
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
 

  
