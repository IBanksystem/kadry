
    Update Apps Set Package_Name='OK_EDB.BPL',Version = '1.0.2.3',name='Кадры ГО',SHORT_DESC ='Кадры ГО',
     class_name='TBOKEDBForm'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');
commit;

alter trigger tr_apps disable;
    Update Apps Set GROUP_ID=70
    where package_name like 'OK_EDB%'
    and (GROUP_ID<>70 or GROUP_ID is null);
    commit;
alter trigger tr_apps enable;

    Update Apps Set  Version = '1.0.2.3',name='Кадры ГО',SHORT_DESC ='Кадры ГО',
     class_name='TBOKEDBForm'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');
commit;


select * from apps
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

