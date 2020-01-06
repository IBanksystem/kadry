
    Update Apps Set Version = '1.0.9.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKREF.bpl');


    Update Apps Set Version = '1.1.5.1'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

