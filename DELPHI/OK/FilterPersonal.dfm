�
 TFMFILTERPERSONAL 0)  TPF0TfmFilterPersonalfmFilterPersonalLeft� Top� BorderStylebsDialogCaption   >8A:ClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderPositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreate	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TPanelOpenCenterPanelLeft Top WidthHeight�AlignalClient
BevelOuterbvNoneTabOrder  	TGroupBox	gbAddressLeft TopWidthHeight~AlignalClientCaption    Адрес, Телефоны TabOrder TLabelLabel25Left	TopWidthbHeightCaption    Место жительства:  TLabelLabel18Left	Top(WidthHHeightCaption   Где прописан:  TLabelLabel34LeftTop(Width8HeightCaption   Телефоны:  TLabelLabel20LeftTopAWidth_HeightCaption   Табельный номер:  TLabelLabel5LeftTopZWidthVHeightCaption   Пенсионный ИН:  TDBEditdbeOK_HOME_ADDRESSFACTLeftsTopWidth�Height	DataFieldHOME_ADDRESSFACT
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBEditdbeOK_Home_AddressLeftsTop(Width�Height	DataFieldHome_Address
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBLookupComboBoxdblcbOKRegTypeLeftpTopWidth� Height	DataFieldReg_Type_code
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
EnabledKeyFieldReg_Type_CODE	ListFieldReg_Type_NAMEListFieldIndex
ListSourceBOKForm.dsSSOKREGTYPE_SETTabOrder TabStop  TDBEditdbeOK_TELEFONLeftpTop(Width� Height	DataFieldTELEFON
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TButtonbOkLeft`TopZWidthKHeightCaption   >B>2>Default	ModalResultTabOrder  TButtonbClearLeft�TopAWidthKHeightCaption   G8AB8BLTabOrderOnClickbClearClick  TButtonbCancelLeft�TopZWidthKHeightCancel	Caption   B<5=0ModalResultTabOrder  	TCheckBox
chbRegTypeLeftTopWidthaHeightCaption   Тип прописки:TabOrderOnClickchbRegTypeClick  TDBEditdbeOKStatusTagLeftDTopAWidth+HeightTabStop	DataFieldstatus_code
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBLookupComboBoxdblcbOKStatusLeftsTopAWidth� Height	DataFieldSTATUS_CODE
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
KeyFieldSTATUS_CODE	ListFieldSTATUS_NAMEListFieldIndex
ListSourceBOKForm.dsSSokStatus_SETTabOrder	TabStop  	TCheckBox	chbStatusLeft TopAWidth8HeightCaption   Статус:Checked	State	cbCheckedTabOrder
OnClickchbStatusClick  TEditedTabnoLeftpTopAWidth� HeightTabOrder  TEditedNPS_idLeftpTopZWidth� HeightTabOrder  TDBLookupComboBoxDBLookupComboBox1LeftsTopZWidth� Height	DataFieldGOsubmit_code
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
KeyFieldgosubmit_code	ListFieldGOsubmit_NAMEListFieldIndex
ListSourceBOKForm.dsSS_OK_GOSUBMITTabOrderTabStop  TDBEditDBEdit1TagLeftDTopZWidth+HeightTabStop	DataFieldGOsubmit_code
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  	TCheckBox
chbPriznakLeft TopZWidthAHeightCaption   Признак:Checked	State	cbCheckedTabOrderOnClickchbStatusClick   	TGroupBox
gbPassportLeft TopvWidthHeightAAlignalTopCaption    Паспорт TabOrder TLabelLabel26Left	TopWidthVHeightCaption   Серия Паспорта:  TLabelLabel27LeftTopWidthYHeightCaption   Номер Паспорта:  TLabelLabel28Left�TopWidth� HeightCaption-   Дата Получения Паспорта:  TLabelLabel29LeftTop(WidthgHeightCaption"   Место Регистрации:  TDBEditdbeOK_PASS_SERIYALeftsTopWidthNHeight	DataFieldPASS_SERIYA
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBEditdbeOK_PASS_NUMLeftpTopWidth� Height	DataFieldPASS_NUM
DataSourceBOKForm.dsOKPersonal_NEWTabOrder   TDBEditdbeOK_PASS_REGLeftpTop&Width�Height	DataFieldPASS_REG
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  	TMaskEditmedOK_PASS_DATELeftpTopWidth� HeightEditMask!99/99/9999;	MaxLength
TabOrderText
  .  .       	TGroupBox
gbPersonalLeft Top WidthHeightvAlignalTopCaption    Сотрудник TabOrder  TLabelLabel21LeftTopAWidth2HeightCaption   Отчество:  TLabelLabel23LeftTop(WidthHeightCaption   Имя:  TLabelLabel30LeftTopWidth4HeightCaption   Фамилия:  TLabellbStatusLeft TopWidthHeight  TLabelLabel32Left	TopWidthSHeightCaption   Дата Рождения:  TLabelLabel33Left	Top(Width_HeightCaption   Номер Тр.Книжки:  TLabelLabel24Left	TopAWidth\HeightCaption   Серия Тр.Книжки:  TDBEditdbeOK_FAMILYLeftpTopWidth� Height	DataFieldFAMILY
DataSourceBOKForm.dsOKPersonal_NEWTabOrder   TDBEditdbeOK_PATRONYMICTagLeftpTopAWidth� Height	DataField
PATRONYMIC
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBEditdbeOK_FIRST_NAMETagLeftpTop(Width� Height	DataField
FIRST_NAME
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBEditdbeOKGenderTagLeftDTopAWidth(HeightTabStop	DataFieldgender_code
DataSourceBOKForm.dsOKPersonal_NEWEnabledTabOrder	  TDBLookupComboBoxdblcbOKGenderLeftpTopAWidth� Height	DataFieldGENDER_CODE
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
EnabledKeyFieldGENDER_CODE	ListFieldGENDER_NAMEListFieldIndex
ListSourceBOKForm.dsSSokgender_SETTabOrder
TabStop  TDBLookupComboBoxdblcbOKFamilyStatusLeftpTopWidth� Height	DataFieldFAMILY_STATUS_CODE
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
EnabledKeyFieldFAMILY_STATUS_CODE	ListFieldFAMILY_STATUS_NAMEListFieldIndex
ListSourceBOKForm.dsSSOKFAMILYSTATUS_SETTabOrderTabStop  TDBEditdbeOKFamilyStatusTagLeftDTopWidth(Height	DataFieldfamily_status_code
DataSourceBOKForm.dsOKPersonal_NEWEnabledTabOrder  TDBLookupComboBoxdblcbOKNationalityLeftpTop(Width� Height	DataFieldNationality_code
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
EnabledKeyFieldNationality_CODE	ListFieldNationality_NAMEListFieldIndex
ListSourceBOKForm.dsSSOKNationality_SETTabOrderTabStop  TDBEditdbeOKNationalityTagLeftDTop(Width(Height	DataFieldnationality_code
DataSourceBOKForm.dsOKPersonal_NEWEnabledTabOrder  TDBEditdbeOK_RECORD_BOOK_SERIESLeftsTopAWidthNHeight	DataFieldRECORD_BOOK_SERIES
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBEditdbeOK_RECORD_BOOK_NUMBERLeftsTop(WidthNHeight	DataFieldRECORD_BOOK_NUMBER
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  	TCheckBoxchbNationalityLeft�Top(WidthqHeightCaption   Национальность:TabOrderOnClickchbNationalityClick  	TCheckBoxchbFamilyStatusLeft�TopWidthyHeightCaption    Семейн.положение:TabOrderOnClickchbFamilyStatusClick  	TCheckBox	chbGenderLeft�TopAWidthIHeightCaption   Пол:TabOrderOnClickchbGenderClick  	TMaskEditmedOK_BIRTHDAYLeftsTopWidthNHeightEditMask!99/99/9999;	MaxLength
TabOrderText
  .  .      TDBEditdbeOKProfmemberLeftDTopZWidth(Height	DataField
profmember
DataSourceBOKForm.dsOKPersonal_NEWTabOrder  TDBLookupComboBoxdblcbOKProfmemberLeftpTopZWidth� Height	DataField
profmember
DataSourceBOKForm.dsOKPersonal_NEWDropDownRows
EnabledKeyField
profmember	ListFieldprofmember_nameListFieldIndex
ListSourceBOKForm.dsSSOKProfmember_SETTabOrderTabStop  	TCheckBoxchbProfmemberLeft�TopZWidthIHeightCaption   @>DA>N7TabOrderOnClickchbProfmemberClick   	TGroupBox	GroupBox1Left Top� WidthHeight\AlignalTopCaption:    Дополнительные условия поиска TabOrder TLabellbBasisLeftPTop(WidthqHeightCaption#   (F9 - выбор из списка)Constraints.MaxWidth�   TLabellbEducationLeftPTopAWidthqHeightCaption#   (F9 - выбор из списка)Constraints.MaxWidth�   TLabelLabel3LeftTopWidthFHeightCaption   Дата приема:  TLabelLabel4LeftTop(Width[HeightCaption   Дата увольнения:  TLabellbPostLeft(TopWidthqHeightCaption#   (F9 - выбор из списка)Constraints.MaxWidth�   TLabellbDepartmentLeft(Top(WidthqHeightCaption#   (F9 - выбор из списка)Constraints.MaxWidth�   TLabelLabel7Left� Top(Width"HeightCaption   Отдел:  TLabelLabel8Left� TopWidth=HeightCaption   Должность:  TLabelLabel9Left�Top(WidthMHeightCaption   Признак обр-я:  TLabelLabel10Left�TopAWidthGHeightCaption   Образование:  TLabelLabel1Left�TopWidthRHeightCaption   Специализация:  TLabel	lbSpecialLeftPTopWidthqHeightCaption#   (F9 - выбор из списка)Constraints.MaxWidth�   TLabelLabel2LeftTopAWidthHeightCaption   $  	TMaskEditmedOKDateEndLeftpTop(WidthAHeightEditMask!99/99/9999;	MaxLength
TabOrder Text
  .  .      	TMaskEditmedOKDateBeginLeftpTopWidthAHeightEditMask!99/99/9999;	MaxLength
TabOrderText
  .  .      TEditedEducationLeft(TopAWidth$HeightTabOrderOnChangeedCodeChange	OnKeyDownFormKeyDown  TEditedBasisLeft(Top(Width$HeightTabOrderOnChangeedCodeChange	OnKeyDownFormKeyDown  TEditedDepartmentLeft� Top(Width%HeightTabOrderOnChangeedCodeChange	OnKeyDownFormKeyDown  TEditedPostLeft� TopWidth%HeightTabOrderOnChangeedCodeChange	OnKeyDownFormKeyDown  	TCheckBoxchbHighDepCodeLeft� Top>Width� HeightCaption<   подчиненные отделы включительноTabOrder  TEdit	edSpecialLeft(TopWidth$HeightTabOrderOnChangeedCodeChange	OnKeyDownFormKeyDown  TEditedBranchFilterLeftpTopAWidthAHeightEnabledTabOrder    TClientDataSetExSource
Aggregates Params LeftOTop�    