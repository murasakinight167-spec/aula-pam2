unit IuUsuario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts;

type
  TFrmIuUsuario = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    EdtNome: TEdit;
    EdtLogin: TEdit;
    EdtSenha: TEdit;
    BtnGravar: TButton;
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    usuid:integer;
    usulogado:boolean;
  end;

var
  FrmIuUsuario: TFrmIuUsuario;

implementation

{$R *.fmx}

uses Umodulo;

procedure TFrmIuUsuario.BtnGravarClick(Sender: TObject);
begin

  with datamodule1.FDQUsuarios do
  begin
  close;
  sql.clear;
  sql.add('inset into usuarios (usunome, usulogin, ususenha) values (:usunome,:usulogin,:ususenha);');

  parambyname('usunome').value:=EdtNome.text;
  parambyname('usulogin').value:=EdtLogin.text;
  parambyname('ususenha').value:=EdtSenha.text;

  ExecSQL;

  end;


end;

end.
