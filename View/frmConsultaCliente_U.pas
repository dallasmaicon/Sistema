unit frmConsultaCliente_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, mControllerConexao_U, Vcl.Buttons;

type
  TfrmConsultaCliente = class(TForm)
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
  frmConsultaCliente: TfrmConsultaCliente;

implementation

uses
  frmCadastroCliente_U, mFuncoes_U;

{$R *.dfm}

procedure TfrmConsultaCliente.btnCadastrarClick(Sender: TObject);
begin
  AbrirForm(frmCadastroCliente);
end;

procedure TfrmConsultaCliente.Button1Click(Sender: TObject);
begin
  FController
  .Entidades
    .Cliente
      .DataSet(DataSource1)
    .Open('');
end;

procedure TfrmConsultaCliente.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

end.
