    Update Apps Set Version = '1.0.8.9'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
commit;
