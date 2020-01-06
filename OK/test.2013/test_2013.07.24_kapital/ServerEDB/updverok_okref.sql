    Update Apps Set Version = '1.0.1.3'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
commit;
