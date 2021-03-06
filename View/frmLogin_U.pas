unit frmLogin_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    btnCadCliente: TBitBtn;
    btnConsultaProduto: TBitBtn;
    btnConsultaFornecedor: TBitBtn;
    btnContasPagar: TBitBtn;
    btnContasReceber: TBitBtn;
    procedure btnConsultaProdutoClick(Sender: TObject);
    procedure btnCadClienteClick(Sender: TObject);
    procedure btnConsultaFornecedorClick(Sender: TObject);
    procedure btnContasPagarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  frmConsultaProduto_U, frmConsultaCliente_U, mFuncoes_U, frmConsultaFornecedor_U,
  frmCadastroContaPagar_U, frmConsultaPagar_U;

{$R *.dfm}

procedure TfrmLogin.btnCadClienteClick(Sender: TObject);
begin
  AbrirForm(frmConsultaCliente);
end;

procedure TfrmLogin.btnConsultaFornecedorClick(Sender: TObject);
begin
  AbrirForm(frmConsultaFornecedor);
end;

procedure TfrmLogin.btnConsultaProdutoClick(Sender: TObject);
begin
  AbrirForm(frmConsultaProduto);
end;

procedure TfrmLogin.btnContasPagarClick(Sender: TObject);
begin
  AbrirForm(frmConsultaPagar);
end;

end.
