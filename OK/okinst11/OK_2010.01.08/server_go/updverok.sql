
    Update Apps Set Version = '1.0.0.9',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OK.bpl');

commit;


    Update Apps Set Version = '1.0.0.7',GROUP_ID=null
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKRef.bpl');



commit;

