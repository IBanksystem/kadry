Merge  Into bank9004.OK_ACADEMIC GOO
      Using ( Select  *
                From  bank394.OK_ACADEMIC ) F
         On ( GOO.BRANCH= F.BRANCH and GOO.PERSONAL_CODE= F.PERSONAL_CODE and GOO.ID= F.ID )
      When MATCHED Then  Update
                            Set  GOO.STATUS_CODE = F.DAY_STATUS
      When Not MATCHED Then Insert  /*+ APPEND */
                                   ( GOO.DATE_TDATE
                                    ,GOO.STATUS_CODE
                                    ,GOO.DATE_ID )
                            Values ( F.OFF_DAY
                                    ,F.DAY_STATUS
                                    ,F.WH_DIM_DATE );
    Commit Comment 'Фиксируем OK_ACADEMIC';
    
    
    
    GOO.BRANCH= F.BRANCH and GOO.PERSONAL_CODE= F.PERSONAL_CODE and GOO.ID= F.ID