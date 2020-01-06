

    Update Apps Set Version = '1.1.1.5'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;
    Update Apps Set Version = '1.0.8.8'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKref.bpl');

commit;

select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

