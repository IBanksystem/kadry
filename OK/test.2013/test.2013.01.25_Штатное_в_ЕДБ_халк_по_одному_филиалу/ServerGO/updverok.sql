
    Update Apps Set Version = '1.0.4.4'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;
    Update Apps Set Version = '1.0.1.3'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

