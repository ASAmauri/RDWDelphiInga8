unit RDWServer.View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDWAbout, uRESTDWBase,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    RESTServicePooler: TRESTServicePooler;
    Button1: TButton;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  RDWServer.Model.MainDataModule;

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
begin

  RESTServicePooler.ServerMethodClass := TMainDataModule;

  RESTServicePooler.Active := not RESTServicePooler.Active;

  if RESTServicePooler.Active then
    Button1.Caption := 'Stop'
  else
    Button1.Caption := 'Start';

end;

end.
