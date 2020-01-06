
    Update Apps Set Version = '1.0.0.1'
    where Upper(Ltrim(Rtrim(Package_Name)))=Upper('OKOrder.bpl');

commit;

