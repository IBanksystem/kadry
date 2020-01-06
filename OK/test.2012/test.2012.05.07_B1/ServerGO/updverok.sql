
    Update Apps Set Version = '1.0.3.8'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;


    Update Apps Set Version = '1.0.1.2'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

commit;

