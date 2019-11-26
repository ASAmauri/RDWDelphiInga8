unit RDWServer.Model.MainDataModule;

interface

uses
  System.SysUtils, System.Classes,
  {
   Begin - uDWDataModule
      Unit com o Objeto TServerMethodDataModule, Classe RemoteDataModule,
      necessário para se criar os métodos que serão chamados remotamente
  }
  uDWDataModule,
  {
   End - uDWDataModule
  }
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, uRESTDWPoolerDB, uDWAbout,
  uRestDWDriverFD, FireDAC.Comp.UI, FireDAC.Phys.IBBase;

type
  TMainDataModule = class(TServerMethodDataModule)
    FDConnection: TFDConnection;
    RESTDWDriverFD: TRESTDWDriverFD;
    RESTDWPoolerDB: TRESTDWPoolerDB;
    FDPhysFBDriverLink: TFDPhysFBDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
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
