object frmCadastroContaPagar: TfrmCadastroContaPagar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Contas a Pagar'
  ClientHeight = 245
  ClientWidth = 503
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
  object Label1: TLabel
    Left = 40
    Top = 24
    Width = 26
    Height = 13
    Caption = 'T'#237'tulo'
  end
  object Label2: TLabel
    Left = 216
    Top = 24
    Width = 81
    Height = 13
    Caption = 'Data Vencimento'
  end
  object Label4: TLabel
    Left = 11
    Top = 59
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label5: TLabel
    Left = 8
    Top = 177
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
  end
  object Label3: TLabel
    Left = 273
    Top = 59
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object EdTitulo: TEdit
    Left = 72
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EdTitulo'
  end
  object edFornecedor: TEdit
    Left = 72
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object mmObservacao: TMemo
    Left = 72
    Top = 88
    Width = 417
    Height = 102
    Lines.Strings = (
      'mmObservacao')
    TabOrder = 4
  end
  object btnCadastrar: TBitBtn
    Left = 208
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 5
    OnClick = btnCadastrarClick
  end
  object edVecnimento: TMaskEdit
    Left = 303
    Top = 16
    Width = 120
    Height = 21
    EditMask = '!99/99/9999;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object edValor: TEdit
    Left = 303
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'edValor'
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 22
  end
end
