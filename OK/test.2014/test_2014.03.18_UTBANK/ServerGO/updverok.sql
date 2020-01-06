

    Update Apps Set Version = '1.0.8.4'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

