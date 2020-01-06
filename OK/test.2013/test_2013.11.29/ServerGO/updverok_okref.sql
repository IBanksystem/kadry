    Update Apps Set Version = '1.0.1.4'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
commit;
