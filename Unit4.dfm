object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Modificar Factura'
  ClientHeight = 306
  ClientWidth = 377
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 135
    Height = 20
    Caption = 'Factura a modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 64
    Height = 20
    Caption = 'Producto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 62
    Height = 20
    Caption = 'Cantidad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 165
    Width = 36
    Height = 20
    Caption = 'Valor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edFactura: TEdit
    Left = 181
    Top = 33
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 181
    Top = 85
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 181
    Top = 125
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 181
    Top = 162
    Width = 121
    Height = 23
    TabOrder = 3
  end
  object Button1: TButton
    Left = 104
    Top = 208
    Width = 105
    Height = 41
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object FDQuery2: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'INSERT INTO PRODUCTOS (PRODUCTO, NOMBRE_PRODUCTO, VALOR)'
      'VALUES'
      '(:PRODUCTO, '#39#39', 0);'
      ''
      'INSERT INTO CLIENTES (CLIENTE, NOMBRE_CLIENTE, DIRECCION)'
      'VALUES'
      '(:CLIENTE, '#39#39','#39#39');'
      ''
      'INSERT INTO CABEZA_FACTURA (NUMERO, FECHA, CLIENTE, TOTAL)'
      'VALUES'
      '(:NUMERO, :FECHA, :CLIENTE, :VALOR);'
      ''
      'INSERT INTO DETALLE_FACTURA (Numero, Producto, Cantidad, Valor)'
      'VALUES'
      '(:NUMERO, :PRODUCTO, :CANTIDAD, :VALOR);'
      ''
      'INSERT INTO PRODUCTOS (Producto, Nombre_Producto, Valor)'
      'VALUES'
      '(:PRODUCTO, '#39#39', :VALOR);')
    Left = 168
    Top = 248
    ParamData = <
      item
        Name = 'PRODUCTO'
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        Name = 'FECHA'
        ParamType = ptInput
      end
      item
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        ParamType = ptInput
      end>
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'UPDATE FROM DETALLE_FACTURA '
      'SET PRODUCTO = :PRODUCTO,'
      '    CANTIDAD = :CANTIDAD,'
      '    VALOR    = :VALOR'
      'WHERE NUMERO = :NUMERO')
    Left = 88
    Top = 224
    ParamData = <
      item
        Name = 'PRODUCTO'
        ParamType = ptInput
      end
      item
        Name = 'CANTIDAD'
        ParamType = ptInput
      end
      item
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        Name = 'NUMERO'
        ParamType = ptInput
      end>
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
    Connected = True
    Left = 8
    Top = 224
  end
end
