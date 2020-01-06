

    Update Apps Set Version = '1.1.2.1'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;

