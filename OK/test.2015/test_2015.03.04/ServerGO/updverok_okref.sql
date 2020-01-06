    Update Apps Set Version = '1.0.8.6'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
commit;
