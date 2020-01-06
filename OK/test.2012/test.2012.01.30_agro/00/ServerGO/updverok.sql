
    Update Apps Set Version = '1.0.3.4'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;

