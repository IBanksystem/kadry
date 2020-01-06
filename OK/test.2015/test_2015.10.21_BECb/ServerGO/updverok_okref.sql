    Update Apps Set Version = '1.0.8.8'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');
commit;
