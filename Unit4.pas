unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    edFactura: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    FDQuery2: TFDQuery;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  iFactura : integer;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
   FDQuery1.ParamByName('NUMERO').AsInteger := StrToInt(edFactura.Text);
   FDQuery1.ParamByName('CANTIDAD').AsInteger := StrToInt(Edit2.Text);
   FDQuery1.ParamByName('VALOR').AsFloat := StrToFloat(Edit3.Text);
   FDQuery1.ParamByName('PRODUCTO').AsString := Edit1.Text;

   FDQuery1.ExecSQL;

   ShowMessage('Factura actualizada correctamente');

end;

end.
