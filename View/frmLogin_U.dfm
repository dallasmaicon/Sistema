object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Login'
  ClientHeight = 91
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnCadCliente: TBitBtn
    Left = 19
    Top = 16
    Width = 107
    Height = 57
    Caption = 'Cliente'
    TabOrder = 0
    OnClick = btnCadClienteClick
  end
  object btnConsultaProduto: TBitBtn
    Left = 539
    Top = 8
    Width = 107
    Height = 57
    Caption = 'Consulta Produto'
    TabOrder = 1
    Visible = False
    OnClick = btnConsultaProdutoClick
  end
  object btnConsultaFornecedor: TBitBtn
    Left = 147
    Top = 16
    Width = 107
    Height = 57
    Caption = ' Fornecedor'
    TabOrder = 2
    OnClick = btnConsultaFornecedorClick
  end
  object btnContasPagar: TBitBtn
    Left = 275
    Top = 16
    Width = 107
    Height = 57
    Caption = 'Contas a Pagar'
    TabOrder = 3
    OnClick = btnContasPagarClick
  end
  object btnContasReceber: TBitBtn
    Left = 539
    Top = 88
    Width = 107
    Height = 57
    Caption = 'Contas a Receber'
    TabOrder = 4
    Visible = False
  end
end
