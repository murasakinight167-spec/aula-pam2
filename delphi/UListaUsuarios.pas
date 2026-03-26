unit UListaUsuarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmListaUsuarios = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout5: TLayout;
    Layout3: TLayout;
    ListView1: TListView;
    BtnSair: TButton;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }


  public
    { Public declarations }

    procedure carregaDados();//ctrl+shift+c
  end;

var
  FrmListaUsuarios: TFrmListaUsuarios;

implementation

{$R *.fmx}
uses UModulo;
procedure TFrmListaUsuarios.carregaDados;
begin
dm.RESTRequest1.Resource:='/susuarios';
dm.RESTRequest1.Execute;//exesql open
end;

procedure TFrmListaUsuarios.FormShow(Sender: TObject);
begin
  carregaDados;
end;

end.
