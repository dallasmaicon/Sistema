object frmCadastroFornecedor: TfrmCadastroFornecedor
  Left = 0
  Top = 0
  Caption = 'Cadastro Fornecedor'
  ClientHeight = 150
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 25
    Top = 19
    Width = 60
    Height = 13
    Caption = 'Raz'#227'o Social'
  end
  object Label3: TLabel
    Left = 46
    Top = 82
    Width = 39
    Height = 13
    Caption = 'Endre'#231'o'
  end
  object Label4: TLabel
    Left = 14
    Top = 51
    Width = 71
    Height = 13
    Caption = 'Nome Fantasia'
  end
  object edNome: TEdit
    Left = 97
    Top = 11
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object btnSalvar: TBitBtn
    Left = 153
    Top = 109
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
  object edEndereco: TEdit
    Left = 97
    Top = 74
    Width = 257
    Height = 21
    TabOrder = 2
  end
  object edFantasia: TEdit
    Left = 97
    Top = 43
    Width = 257
    Height = 21
    TabOrder = 1
  end
  object DataSource1: TDataSource
    Left = 321
    Top = 102
  end
end
