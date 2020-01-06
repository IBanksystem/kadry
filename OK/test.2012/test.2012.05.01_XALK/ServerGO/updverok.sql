
    Update Apps Set Version = '1.0.3.7'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

