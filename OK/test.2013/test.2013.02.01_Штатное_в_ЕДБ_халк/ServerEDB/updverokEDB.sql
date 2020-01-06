
    Update Apps Set Version = '1.0.1.3'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

commit;

alter trigger tr_apps disable;
    Update Apps Set GROUP_ID=70
    where package_name like 'OK_EDB%'
    and (GROUP_ID<>70 or GROUP_ID is null);
    commit;
alter trigger tr_apps enable;

    Update Apps Set  Version = '1.0.3.0',name='Кадры ГО',SHORT_DESC ='Кадры ГО',
     class_name='TBOKEDBForm'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');
commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';
