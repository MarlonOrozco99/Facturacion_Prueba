object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Eliminar Factura'
  ClientHeight = 306
  ClientWidth = 376
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
    Width = 125
    Height = 20
    Caption = 'Factura a eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edFactura: TEdit
    Left = 197
    Top = 33
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 112
    Top = 96
    Width = 137
    Height = 41
    Caption = 'Eliminar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
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
    Connected = True
    Left = 8
    Top = 224
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'DELETE FROM DETALLE_FACTURA WHERE NUMERO = :NUMERO;'
      ''
      'DELETE FROM CABEZA_FACTURA WHERE NUMERO = :NUMERO')
    Left = 88
    Top = 224
    ParamData = <
      item
        Name = 'NUMERO'
        ParamType = ptInput
      end>
  end
end
