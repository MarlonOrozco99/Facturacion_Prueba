unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSSQL, FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    edFactura: TEdit;
    Button1: TButton;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
var
   Respuesta : string;
begin
   if MessageDlg('Esta seguro de eliminar la factura?',mtConfirmation,[mbYes,mbNo],0)=mrYES then
      begin
         FDQuery1.ParamByName('NUMERO').AsInteger := StrToInt(edFactura.Text);
         FDQuery1.ExecSQL;

         ShowMessage('Se elimino la factura correctamente');
      end;

end;

end.
