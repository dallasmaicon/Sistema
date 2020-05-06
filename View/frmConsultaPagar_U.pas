unit frmConsultaPagar_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, mControllerConexao_U;

type
  TfrmConsultaPagar = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    btnCadastro: TBitBtn;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnCadastroClick(Sender: TObject);
  private
    { Private declarations }
    FController : iController;
  public
    { Public declarations }
  end;

var
  frmConsultaPagar: TfrmConsultaPagar;

implementation

uses
  mFuncoes_U, frmCadastroContaPagar_U;

{$R *.dfm}

procedure TfrmConsultaPagar.btnCadastroClick(Sender: TObject);
begin
  AbrirForm(frmCadastroContaPagar);
end;

procedure TfrmConsultaPagar.Button1Click(Sender: TObject);
begin
  FController
  .Entidades
    .Pagar
      .DataSet(DataSource1)
    .Open('');
end;

procedure TfrmConsultaPagar.FormCreate(Sender: TObject);
begin
  FController := TController.New;
  ReportMemoryLeaksOnShutdown := true;
end;

end.
