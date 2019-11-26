unit DRWClient.Model.MainDataModule;

interface

uses
  System.SysUtils, System.Classes, uDWAbout, uRESTDWPoolerDB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uDWConstsData;

type
  TMainDataModule = class(TDataModule)
    RESTDWDataBase: TRESTDWDataBase;
    RESTDWClientSQL_Employee: TRESTDWClientSQL;
    RESTDWClientSQL_EmployeeEMP_NO: TSmallintField;
    RESTDWClientSQL_EmployeeFIRST_NAME: TStringField;
    RESTDWClientSQL_EmployeeLAST_NAME: TStringField;
    RESTDWClientSQL_EmployeePHONE_EXT: TStringField;
    RESTDWClientSQL_EmployeeHIRE_DATE: TSQLTimeStampField;
    RESTDWClientSQL_EmployeeDEPT_NO: TStringField;
    RESTDWClientSQL_EmployeeJOB_CODE: TStringField;
    RESTDWClientSQL_EmployeeJOB_GRADE: TSmallintField;
    RESTDWClientSQL_EmployeeJOB_COUNTRY: TStringField;
    RESTDWClientSQL_EmployeeSALARY: TFloatField;
    RESTDWClientSQL_EmployeeFULL_NAME: TStringField;
    RESTDWClientSQL_EmployeeTIMEC: TTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainDataModule: TMainDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
