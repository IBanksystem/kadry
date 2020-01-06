
    Update Apps Set Version = '1.0.1.2',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;


