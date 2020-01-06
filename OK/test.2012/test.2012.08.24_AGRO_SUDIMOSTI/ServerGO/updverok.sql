
    Update Apps Set Version = '1.0.4.0'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

