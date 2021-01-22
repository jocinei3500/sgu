object frLogin: TfrLogin
  Left = 333
  Top = 212
  BorderStyle = bsSingle
  Caption = 'Sistema de Gerenciamento de Usina de asfalto SGU 0.0.1'
  ClientHeight = 180
  ClientWidth = 455
  Color = 15790043
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000330077000000000000000000000000003B077070000000000000
    000000000000BB807007000000000000000000000300B0007000700000000000
    00000000330070070700070000000000000000003B0700700070007000000000
    00000000BB800700000700070000000000000300B00070000000700070000000
    0000330070070000000007000700000000003B07007000000000007007000000
    0000BB800700000000000007070000000300B000700000000070000077000000
    330070070000000007000000803300003B070070000000000000000800330000
    BB8007000000000000000080BBBB0300B000700000000070000008000BB03300
    70070000000707000000803300003B070070000000707000000800330000BB80
    07000000070700000080BBBB0000B000700000000070000008000BB000007007
    0000000007000000803300000000707000007770000000080033000000008700
    0007070700000080BBBB00000000080000077777000008000BB0000000000080
    0007070700008033000000000000000800007770000800330000000000000000
    800000000080BBBB00000000000000000800000008000BB00000000000000000
    0080000080330000000000000000000000080008003300000000000000000000
    00008080BBBB00000000000000000000000008000BB00000000000000000FFFF
    33FFFFFF21FFFFFF00FFFFFB007FFFF3003FFFF2001FFFF0000FFFB00007FF30
    0003FF200003FF000003FB000003F3000000F2000000F0000010B00000393000
    000F2000000F0000010F0000039F000000FF000000FF000010FF800039FFC000
    0FFFE0000FFFF0010FFFF8039FFFFC00FFFFFE00FFFFFF10FFFFFFB9FFFF}
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 409
    Height = 121
    Caption = 'Conectar-se ao sistema SGU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 88
      Top = 56
      Width = 59
      Height = 20
      Caption = 'Usu'#225'rio:'
    end
    object Label2: TLabel
      Left = 96
      Top = 80
      Width = 51
      Height = 20
      Caption = 'Senha:'
    end
    object edUser: TEdit
      Left = 152
      Top = 48
      Width = 121
      Height = 28
      TabOrder = 0
      Text = 'jocinei'
    end
    object edSenha: TEdit
      Left = 152
      Top = 80
      Width = 121
      Height = 25
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Wingdings'
      Font.Style = []
      ParentFont = False
      PasswordChar = 'l'
      TabOrder = 1
      Text = '201129'
    end
  end
  object BitBtn1: TBitBtn
    Left = 24
    Top = 144
    Width = 89
    Height = 25
    Caption = '<<Detalhes'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 144
    Top = 144
    Width = 81
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 248
    Top = 144
    Width = 81
    Height = 25
    Caption = 'Limpar'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 352
    Top = 144
    Width = 81
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object qlogin: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=sgu'
    Parameters = <>
    Left = 416
    Top = 8
  end
end
