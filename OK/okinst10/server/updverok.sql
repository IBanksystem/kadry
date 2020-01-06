
    Update Apps Set Version = '1.0.0.3',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

    Update Apps Set Version = '1.0.0.4',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

commit;

