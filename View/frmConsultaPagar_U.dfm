object frmConsultaPagar: TfrmConsultaPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'frmConsultaPagar'
  ClientHeight = 308
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 763
    Height = 260
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Caption = 'C'#243'digo'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGOFONRECEDOR'
        Title.Caption = 'Fornecedor'
        Width = 375
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAVENCIMENTO'
        Title.Caption = 'Vencimento'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 140
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 680
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnCadastro: TBitBtn
    Left = 13
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cadastro'
    TabOrder = 2
    OnClick = btnCadastroClick
  end
  object DataSource1: TDataSource
    Left = 680
    Top = 168
  end
end
