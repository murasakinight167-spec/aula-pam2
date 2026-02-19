program PLanchonete;

uses
  System.StartUpCopy,
  FMX.Forms,
  UAcesso in 'UAcesso.pas' {Frmacesso};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmacesso, Frmacesso);
  Application.Run;
end.
