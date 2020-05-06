object frmConsultaFornecedor: TfrmConsultaFornecedor
  Left = 0
  Top = 0
  Caption = 'frmConsultaFornecedor'
  ClientHeight = 304
  ClientWidth = 632
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
    Top = 44
    Width = 632
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
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 476
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 552
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object btnCadastrar: TBitBtn
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = '+ Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object DataSource1: TDataSource
    Left = 416
    Top = 24
  end
end
