

    Update Apps Set Version = '1.1.2.1'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK_EDB.bpl');

commit;

    Update Apps Set Version = '1.0.8.8'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKref.bpl');


commit;


