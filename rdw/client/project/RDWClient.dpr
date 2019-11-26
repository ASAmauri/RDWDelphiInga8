program RDWClient;

uses
  Vcl.Forms,
  RDWClient.View.Main in '..\view\RDWClient.View.Main.pas' {MainForm},
  DRWClient.Model.MainDataModule in '..\model\DRWClient.Model.MainDataModule.pas' {MainDataModule: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TMainDataModule, MainDataModule);
  Application.Run;
end.
