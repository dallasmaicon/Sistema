unit frmCadastroCliente_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, mControllerConexao_U,
  mControllerCliente_U;

type
  TfrmCadastroCliente = class(TForm)
    Label2: TLabel;
    edNome: TEdit;
    btnSalvar: TBitBtn;
    DataSource1: TDataSource;
    Label3: TLabel;
    edEndereco: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FController: iController;
    function GetClassCliente: TnClassCliente;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
var
  ACadastroCliente: TControlllerCliente;
begin
  ACadastroCliente := TControlllerCliente.Create(GetClassCliente);
  try
    FController
      .Entidades
        .Cliente
          .DataSet(DataSource1)
        .ExecSQL(ACadastroCliente.Param, ACadastroCliente.GetValue);
  finally
    FreeAndNil(ACadastroCliente);
    ShowMessage('Cadastro efeutado com sucesso!');
    LimparCampos;
  end;
end;

function TfrmCadastroCliente.GetClassCliente: TnClassCliente;
begin
  Result.Nome     := edNome.Text;
  Result.Endereco := edEndereco.Text;
end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
  LimparCampos;
end;

procedure TfrmCadastroCliente.LimparCampos;
begin
  edNome.Clear;
  edEndereco.Clear;
  edNome.SetFocus;
end;

end.
