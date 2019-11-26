unit RDWClient.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  uDWJSONObject,
  uDWConstsData,
  Vcl.StdCtrls, uRESTDWServerEvents, uDWAbout, uRESTDWBase, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TMainForm = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Panel1: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource: TDataSource;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    ApplyButton: TButton;
    OpenButton: TButton;
    procedure OpenButtonClick(Sender: TObject);
    procedure ApplyButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses DRWClient.Model.MainDataModule;

procedure TMainForm.ApplyButtonClick(Sender: TObject);
var
  vError : String;
begin

    with MainDataModule do
    begin
      if RESTDWClientSQL_Employee.MassiveCount > 0 then
        RESTDWClientSQL_Employee.ApplyUpdates(vError);
    end;

    if Trim(vError) <> '' then
      ShowMessage(vError)
    else
      Showmessage('Delphi ing� � s� sucesso!');

end;

procedure TMainForm.OpenButtonClick(Sender: TObject);
begin

    MainDataModule.RESTDWClientSQL_Employee.Active :=
      not MainDataModule.RESTDWClientSQL_Employee.Active;

    if MainDataModule.RESTDWClientSQL_Employee.Active then
      OpenButton.Caption := 'Close'
    else
      OpenButton.Caption := 'Open';

end;

end.
