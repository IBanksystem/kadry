
    Update Apps Set Package_Name='OK_EDB.BPL',Version = '1.0.1.8',name='����� ��',SHORT_DESC ='����� ��',
    class_name='TBOKEDBForm'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

    Update Apps Set Package_Name='OK_EDB.BPL',Version = '1.0.1.8',name='����� ��',SHORT_DESC ='����� ��',
    class_name='TBOKEDBForm'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');
commit;

select * from apps
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');


