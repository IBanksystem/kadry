
    Update Apps Set Version = '1.0.6.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

