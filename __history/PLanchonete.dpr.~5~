program PLanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  UModulo in 'delphi\UModulo.pas' {dm: TDataModule},
  IuUsuario in 'delphi\IuUsuario.pas' {FrmIuUsuario},
  UListaUsuarios in 'delphi\UListaUsuarios.pas' {FrmListaUsuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmIuUsuario, FrmIuUsuario);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFrmListaUsuarios, FrmListaUsuarios);
  Application.Run;
end.
