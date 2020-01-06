

    Update Apps Set Version = '1.0.9.5'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKSTAT.bpl');
commit;


select PACKAGE_NAME,CLASS_NAME,VERSION,SHORT_DESC,NAME 
from Apps where Package_Name like 'OK%';

