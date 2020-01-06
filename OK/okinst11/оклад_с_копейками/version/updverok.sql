
    Update Apps Set Version = '1.0.0.6',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

    Update Apps Set Version = '1.0.0.6',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

commit;

