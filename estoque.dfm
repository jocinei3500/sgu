object frEstoque: TfrEstoque
  Left = 291
  Top = 104
  BorderStyle = bsNone
  Caption = 'Controle de estoque'
  ClientHeight = 543
  ClientWidth = 1160
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gbMain: TGroupBox
    Left = 16
    Top = 8
    Width = 1129
    Height = 529
    Caption = 'Controle de estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object gbDados: TGroupBox
      Left = 8
      Top = 176
      Width = 1113
      Height = 345
      Caption = 'Produtos em estoque'
      TabOrder = 2
      object dbgdados: TDBGrid
        Left = 8
        Top = 24
        Width = 1097
        Height = 313
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
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = []
      end
    end
    object gbTop: TGroupBox
      Left = 8
      Top = 24
      Width = 1113
      Height = 89
      Caption = 'Tipo de Consulta'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 135
        Height = 20
        Caption = 'C'#243'digo do produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 296
        Top = 24
        Width = 127
        Height = 20
        Caption = 'Nome do produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 104
        Top = 64
        Width = 48
        Height = 20
        Caption = 'Marca:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 720
        Top = 24
        Width = 118
        Height = 20
        Caption = 'Modelo/N'#186' S'#233'rie:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 736
        Top = 64
        Width = 96
        Height = 20
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object edCod: TEdit
        Left = 160
        Top = 16
        Width = 97
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = edCodExit
      end
      object edNomeProd: TEdit
        Left = 424
        Top = 16
        Width = 281
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = edNomeProdExit
      end
      object edMarca: TEdit
        Left = 160
        Top = 56
        Width = 545
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnExit = edMarcaExit
      end
      object edModelo: TEdit
        Left = 840
        Top = 16
        Width = 233
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = edModeloExit
      end
      object edPreco: TEdit
        Left = 840
        Top = 56
        Width = 233
        Height = 28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnExit = edPrecoExit
      end
    end
    object gbControles: TGroupBox
      Left = 8
      Top = 112
      Width = 1113
      Height = 65
      TabOrder = 1
      object btnRetornar: TBitBtn
        Left = 8
        Top = 16
        Width = 153
        Height = 33
        Caption = 'Retornar [ESC]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnRetornarClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00344446333334
          44433333FFFF333333FFFF33000033AAA43333332A4333338833F33333883F33
          00003332A46333332A4333333383F33333383F3300003332A2433336A6633333
          33833F333383F33300003333AA463362A433333333383F333833F33300003333
          6AA4462A46333333333833FF833F33330000333332AA22246333333333338333
          33F3333300003333336AAA22646333333333383333F8FF33000033444466AA43
          6A43333338FFF8833F383F330000336AA246A2436A43333338833F833F383F33
          000033336A24AA442A433333333833F33FF83F330000333333A2AA2AA4333333
          333383333333F3330000333333322AAA4333333333333833333F333300003333
          333322A4333333333333338333F333330000333333344A433333333333333338
          3F333333000033333336A24333333333333333833F333333000033333336AA43
          33333333333333833F3333330000333333336663333333333333333888333333
          0000}
        NumGlyphs = 2
      end
      object btnOK: TBitBtn
        Left = 184
        Top = 16
        Width = 153
        Height = 33
        Caption = 'OK [F5]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnOKClick
      end
      object BitBtn1: TBitBtn
        Left = 360
        Top = 16
        Width = 153
        Height = 33
        Caption = 'OK [F5]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 432
    object Gravaralteraesnagradededados1: TMenuItem
      Caption = 'Gravar altera'#231#245'es na grade de dados??'
      OnClick = Gravaralteraesnagradededados1Click
    end
  end
end
