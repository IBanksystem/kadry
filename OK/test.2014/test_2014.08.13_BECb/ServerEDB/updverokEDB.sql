

    Update Apps Set Version = '1.0.9.9'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;

    Update Apps Set Version = '2.0.0.0',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');

commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

