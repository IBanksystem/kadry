

    Update Apps Set Version = '1.1.2.5'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;


