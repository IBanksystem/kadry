spool c:\err.txt

    Update Apps Set Package_Name='OK_EDB.BPL',Version = '1.0.0.4',name='����� ��',SHORT_DESC ='����� ��'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');
commit;

select * from apps
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

spool off;

