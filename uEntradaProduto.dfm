object frEntradaProduto: TfrEntradaProduto
  Left = 361
  Top = 170
  Width = 754
  Height = 399
  Caption = 'Entrada de produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 157
    Height = 20
    Caption = 'C'#243'digo Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 88
    Top = 64
    Width = 131
    Height = 20
    Caption = 'C'#243'digo do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 128
    Top = 104
    Width = 83
    Height = 20
    Caption = 'Qunatidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 144
    Width = 32
    Height = 20
    Caption = 'data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edCod: TEdit
    Left = 232
    Top = 16
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edProduto: TEdit
    Left = 232
    Top = 56
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object btOk: TButton
    Left = 232
    Top = 184
    Width = 273
    Height = 25
    Caption = 'Registrar sa'#237'da'
    TabOrder = 2
    OnClick = btOkClick
  end
  object edQuant: TEdit
    Left = 232
    Top = 96
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edData: TEdit
    Left = 232
    Top = 136
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 512
    Top = 56
    Width = 177
    Height = 25
    Caption = 'Pesquisar [F2]'
    TabOrder = 5
    OnClick = Button1Click
  end
end
