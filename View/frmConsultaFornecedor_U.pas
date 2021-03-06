unit frmConsultaFornecedor_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, mControllerConexao_U;

type
  TfrmConsultaFornecedor = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource1: TDataSource;
    btnCadastrar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  frmConsultaFornecedor: TfrmConsultaFornecedor;

implementation

uses
  mFuncoes_U, frmCadastroFornecedor_U;

{$R *.dfm}

procedure TfrmConsultaFornecedor.btnCadastrarClick(Sender: TObject);
begin
  AbrirForm(frmCadastroFornecedor);
end;

procedure TfrmConsultaFornecedor.Button1Click(Sender: TObject);
begin
  FController
  .Entidades
    .Fornecedor
      .DataSet(DataSource1)
    .Open('');
end;

procedure TfrmConsultaFornecedor.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

end.
