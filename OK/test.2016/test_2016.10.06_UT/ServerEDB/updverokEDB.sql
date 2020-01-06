

    Update Apps Set Version = '1.1.3.6'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;


