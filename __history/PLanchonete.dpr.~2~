program PLanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  UAcesso in 'UAcesso.pas' {Frmacesso},
  UModulo in 'delphi\UModulo.pas' {DataModule1: TDataModule},
  IuUsuario in 'delphi\IuUsuario.pas' {FrmIuUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmIuUsuario, FrmIuUsuario);
  Application.CreateForm(TFrmacesso, Frmacesso);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
