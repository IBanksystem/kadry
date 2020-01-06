
    Update Apps Set Version = '1.0.9.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKREF.bpl');


    Update Apps Set Version = '1.1.5.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;


