
    Update Apps Set Version = '1.0.2.2'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

