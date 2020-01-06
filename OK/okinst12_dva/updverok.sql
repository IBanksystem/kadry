
    Update Apps Set Version = '1.0.2.2',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

    Update Apps Set Version = '1.0.0.9',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');

    Update Apps Set Version = '1.0.0.0',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');

commit;

