object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Consulta Factura'
  ClientHeight = 286
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 186
    Height = 20
    Caption = 'Ingrese numero de factura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object NumFactura: TEdit
    Left = 224
    Top = 49
    Width = 121
    Height = 23
    TabOrder = 0
    TextHint = 'Numero Factura'
  end
  object Button1: TButton
    Left = 112
    Top = 104
    Width = 121
    Height = 33
    Caption = 'Consultar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=PRUEBAS'
      'SERVER=NB-DES03'
      'OSAuthent=Yes'
      'ApplicationName=Enterprise/Architect/Ultimate'
      'Workstation=NB-DES03'
      'MARS=yes'
      'User_Name=user_pruebas'
      'Password=12345678'
      'DriverID=MSSQL')
    Left = 8
    Top = 224
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        ' SELECT  C.NOMBRE_CLIENTE, SUM(D.VALOR) AS TOTAL, D.CANTIDAD, P.' +
        'Nombre_Producto, P.Valor AS VALOR_UNIDAD'
      
        ' FROM CLIENTES C, Cabeza_Factura F, Detalle_Factura D, Productos' +
        ' P'
      ' WHERE C.CLIENTE = F.CLIENTE'
      ' AND F.NUMERO = D.NUMERO '
      ' AND P.PRODUCTO = D.PRODUCTO'
      ' AND D.NUMERO = :FACTURA'
      
        ' GROUP BY C.NOMBRE_CLIENTE, D.CANTIDAD, P.NOMBRE_PRODUCTO, P.VAL' +
        'OR'
      '')
    Left = 88
    Top = 224
    ParamData = <
      item
        Name = 'FACTURA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
