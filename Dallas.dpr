program Dallas;

uses
  Vcl.Forms,
  frmLogin_U in 'View\frmLogin_U.pas' {frmLogin},
  mControllerConexao_U in 'Controller\mControllerConexao_U.pas',
  mModelConexao_U in 'Model\mModelConexao_U.pas',
  frmConsultaProduto_U in 'View\frmConsultaProduto_U.pas' {frmConsultaProduto},
  frmConsultaCliente_U in 'View\frmConsultaCliente_U.pas' {frmConsultaCliente},
  mModelEntidadeProduto_U in 'Model\Produto\mModelEntidadeProduto_U.pas',
  mModelEntidadeCliente_U in 'Model\Cliente\mModelEntidadeCliente_U.pas',
  mModelConexaoFactory_U in 'Model\Factory\mModelConexaoFactory_U.pas',
  mModelEntidadesFactory_U in 'Model\Factory\mModelEntidadesFactory_U.pas',
  mModelConfigConexaoFactory_U in 'Model\Factory\mModelConfigConexaoFactory_U.pas',
  frmCadastroProduto_U in 'View\frmCadastroProduto_U.pas' {frmCadastroProduto},
  mControllerProduto_U in 'Controller\mControllerProduto_U.pas',
  mFuncoes_U in 'mFuncoes_U.pas',
  frmCadastroCliente_U in 'View\frmCadastroCliente_U.pas' {frmCadastroCliente},
  mControllerCliente_U in 'Controller\mControllerCliente_U.pas',
  frmCadastroContaPagar_U in 'View\frmCadastroContaPagar_U.pas' {frmCadastroContaPagar},
  frmCadastroFornecedor_U in 'View\frmCadastroFornecedor_U.pas' {frmCadastroFornecedor},
  mControllerFornecedor_U in 'Controller\mControllerFornecedor_U.pas',
  mModelEntidadeFornecedor_U in 'Model\Fornecedor\mModelEntidadeFornecedor_U.pas',
  frmConsultaFornecedor_U in 'View\frmConsultaFornecedor_U.pas' {frmConsultaFornecedor},
  mModelEntidadePagar_U in 'Model\Pagar\mModelEntidadePagar_U.pas',
  mControllerPagar_U in 'Controller\mControllerPagar_U.pas',
  frmConsultaPagar_U in 'View\frmConsultaPagar_U.pas' {frmConsultaPagar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroContaPagar, frmCadastroContaPagar);
  Application.CreateForm(TfrmCadastroFornecedor, frmCadastroFornecedor);
  Application.CreateForm(TfrmConsultaFornecedor, frmConsultaFornecedor);
  Application.CreateForm(TfrmConsultaPagar, frmConsultaPagar);
  Application.Run;
end.
