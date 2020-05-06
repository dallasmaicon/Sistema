unit frmCadastroFornecedor_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  mControllerConexao_U, mControllerFornecedor_U;

type
  TfrmCadastroFornecedor = class(TForm)
    Label2: TLabel;
    edNome: TEdit;
    btnSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label3: TLabel;
    edEndereco: TEdit;
    Label4: TLabel;
    edFantasia: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
    FController: iController;

    function GetClassFornecedor: TnClassFornecedor;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frmCadastroFornecedor: TfrmCadastroFornecedor;

implementation

{$R *.dfm}

procedure TfrmCadastroFornecedor.btnSalvarClick(Sender: TObject);
var
  ACadastroFornecedor: TControllerFornecedor;
begin
  ACadastroFornecedor := TControllerFornecedor.Create(GetClassFornecedor);
  try
    FController
      .Entidades
        .Fornecedor
          .DataSet(DataSource1)
        .ExecSQL(ACadastroFornecedor.Param, ACadastroFornecedor.GetValue);
  finally
    FreeAndNil(ACadastroFornecedor);
    ShowMessage('Cadastro efetuado com sucesso!');
    LimparCampos;
  end;
end;

procedure TfrmCadastroFornecedor.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TfrmCadastroFornecedor.FormShow(Sender: TObject);
begin
  LimparCampos;
end;

function TfrmCadastroFornecedor.GetClassFornecedor: TnClassFornecedor;
begin
  Result.Nome     := edNome.Text;
  Result.Fantasia := edFantasia.Text;
  Result.Endereco := edEndereco.Text;
end;

procedure TfrmCadastroFornecedor.LimparCampos;
begin
  edNome.Clear;
  edFantasia.Clear;
  edEndereco.Clear;
  edNome.SetFocus;
end;

end.
