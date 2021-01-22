object frpesqProd: TfrpesqProd
  Left = 240
  Top = 141
  BorderStyle = bsNone
  Caption = 'Pesquisa produtos'
  ClientHeight = 441
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 112
    Top = 24
    Width = 50
    Height = 20
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 120
    Width = 93
    Height = 20
    Caption = 'Modelo/S'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 112
    Top = 88
    Width = 44
    Height = 20
    Caption = 'Marca'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 112
    Top = 56
    Width = 56
    Height = 20
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edCod: TEdit
    Left = 176
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
    OnExit = edCodExit
  end
  object edCodSerie: TEdit
    Left = 176
    Top = 112
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnExit = edCodSerieExit
  end
  object edMarca: TEdit
    Left = 176
    Top = 80
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = edMarcaExit
  end
  object edProduto: TEdit
    Left = 176
    Top = 48
    Width = 273
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnExit = edProdutoExit
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 184
    Width = 945
    Height = 233
    Color = 15854571
    DataSource = dbdados.dsEstoque
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnKeyPress = DBGrid1KeyPress
  end
  object Button1: TButton
    Left = 456
    Top = 112
    Width = 153
    Height = 25
    Caption = 'Filtrar Produtos'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 152
    Width = 273
    Height = 25
    Caption = 'Escolher Produto [ENTER]'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 456
    Top = 16
    Width = 153
    Height = 25
    Caption = '<<--Retornar'
    TabOrder = 7
    OnClick = Button3Click
  end
  object PopupMenu1: TPopupMenu
    Left = 824
    Top = 72
    object Salvaralteraesdagradededados1: TMenuItem
      Caption = 'Salvar altera'#231#245'es da  grade de dados?'
      OnClick = Salvaralteraesdagradededados1Click
    end
  end
end
