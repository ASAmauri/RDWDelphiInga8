program RDWClient;

uses
  Vcl.Forms,
  RDWClient.View.Main in '..\view\RDWClient.View.Main.pas' {Form1},
  DRWClient.Model.MainDataModule in '..\model\DRWClient.Model.MainDataModule.pas' {MainDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.Run;
end.
